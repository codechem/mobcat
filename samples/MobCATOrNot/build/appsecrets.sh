# Check CustomVisionProjectId exists
# Check CustomVisionTrainingKey exists
# Check AzureFunctionsUrl exists
# Check AzureFunctionsCode exists

if [ ! -n $(CustomVisionProjectId) ]
then
    echo "You need define the CustomVisionProjectId variable in VSTS"
    exit
fi

if [ ! -n $(CustomVisionTrainingKey) ]
then
    echo "You need define the CustomVisionTrainingKey variable in VSTS"
    exit
fi

if [ ! -n $(AzureFunctionsUrl) ]
then
    echo "You need define the AzureFunctionsUrl variable in VSTS"
    exit
fi

if [ ! -n $(AzureFunctionsCode) ]
then
    echo "You need define the AzureFunctionsCode variable in VSTS"
    exit
fi

APP_CONSTANT_FILE=samples/MobCATOrNot/MobCATOrNot/Constants.cs

if [ -e "$APP_CONSTANT_FILE" ]
then
    echo "Updating App Secret Values to CustomVisionProjectId in Constants.cs"
    sed -i '' 's#CustomVisionProjectId = "[a-z:./\\_]*"#CustomVisionProjectId = "$(CustomVisionProjectId)"#' $APP_CONSTANT_FILE

 echo "Updating App Secret Values to CustomVisionTrainingKey in Constants.cs"
    sed -i '' 's#CustomVisionTrainingKey = "[a-z:./\\_]*"#CustomVisionTrainingKey = "$(CustomVisionTrainingKey)"#' $APP_CONSTANT_FILE

 echo "Updating App Secret Values to AzureFunctionsUrl in Constants.cs"
    sed -i '' 's#AzureFunctionsUrl = "[a-z:./\\_]*"#AzureFunctionsUrl = "$(AzureFunctionsUrl)"#' $APP_CONSTANT_FILE

 echo "Updating App Secret Values to AzureFunctionsCode in Constants.cs"
    sed -i '' 's#AzureFunctionsCode = "[a-z:./\\_]*"#AzureFunctionsCode = "$(AzureFunctionsCode)"#' $APP_CONSTANT_FILE

    echo "File content:"
    cat $APP_CONSTANT_FILE
fi