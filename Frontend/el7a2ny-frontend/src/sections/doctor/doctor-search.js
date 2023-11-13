import MagnifyingGlassIcon from '@heroicons/react/24/solid/MagnifyingGlassIcon';
import { Card, InputAdornment, OutlinedInput, SvgIcon,Stack,TextField,MenuItem } from '@mui/material';

export const DoctorsSearch = ({handleDateFilter , handleDoctorSearch , handleSpecialitySearch , sepcialities , handleSpecialityFilter}) => {
  return(
  <Card sx={{ p: 2 }}>
    <Stack direction="row" spacing = {3}>
    <OutlinedInput
      defaultValue=""
      onChange={(str) => {
        handleDoctorSearch(str.target.value);
      }}
      placeholder="Search Doctor"
      startAdornment={(
        <InputAdornment position="start">
          <SvgIcon
            color="action"
            fontSize="small"
          >
            <MagnifyingGlassIcon />
          </SvgIcon>
        </InputAdornment>
      )}
    />
    <OutlinedInput
      defaultValue=""
      onChange={(str) => {
        handleSpecialitySearch(str.target.value);
        console.log('Here ----> ');
      }}
      placeholder="Search Speciality"
      startAdornment={(
        <InputAdornment position="start">
          <SvgIcon
            color="action"
            fontSize="small"
          >
            <MagnifyingGlassIcon />
          </SvgIcon>
        </InputAdornment>
      )}
    />
    <TextField
          sx={{width: 200}}
          id="speciality"
          select
          label="Speciality"
          defaultValue="None"
          helperText=""
          onChange={(str) => {handleSpecialityFilter(str.target.value)}}
        >
        {sepcialities.map((option) => (
            <MenuItem key={option.value} value={option.value} >
              {option.label}
            </MenuItem>
          ))}
    </TextField>
    <TextField
        label="Available Date"
        name="DateOfBirth"
        onChange={(event) => {
        const value = event.target.value;
        if (value.length > 0) {
          const date = value.substring(0, 10);
          const time = value.substring(11, 16);
          const h = value.substring(11, 13);
          const m = value.substring(14, 16);
          handleDateFilter(date , h);
        }
        else{
          handleDateFilter("" , 0);
        }
      }}
      // text field for setting date and time 
        type="datetime-local"
        InputLabelProps={{ shrink: true }}
      />
    </Stack>
  </Card>
);}
