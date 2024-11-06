function org_dated_files
  argparse 'd/description=' 's/suffix=' 'p/path=!test -d "$_flag_value"' -- $argv
  or return
  for file in $argv
    if not test -f $file
      echo 'Given argument is not a file:' $file
      return 1
    end
    set -l re_year '(?<year>\d{4})'
    set -l re_month '(?<month>0[1-9]|1[0-2])'
    set -l re_day '(?<day>0[1-9]|[12][0-9]|3[01])'
    string match -rqg (string join '' '(?<file_date_extended>' (string join '\-' $re_year $re_month $re_day) ')') $file
    string match -rqg (string join '' '(?<file_date_basic>' $re_year $re_month $re_day ')') $file
    if test -n "$file_date_extended"
      set -f file_date $file_date_extended
    else if test -n "$file_date_basic"
      set -f file_date $file_date_basic
    else
      echo 'Could not extract date from file name (ISO 8601 yyyy-mm-dd or yyymmdd). Skipping' $file
      continue
    end
    set -l prefix (string replace -a - '' $file_date)
    set -l extension (string lower (path extension $file))
    set dst_file (path normalize (string join '/' $_flag_path (path change-extension $extension (string join _ $prefix $_flag_description $_flag_suffix))))
    cp $file $dst_file
    echo "Copied $file to $dst_file"
  end
end
