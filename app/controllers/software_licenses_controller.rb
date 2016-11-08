class SoftwareLicensesController < ApplicationController
    def create
        @device = Device.find(params[:device_id])
        @software_license = @device.software_licenses.create(software_license_params)
        redirect_to device_path(@device)
    end
    
    def index
       @software_licenses = SoftwareLicense.all
    end
    
    def show
       @software_license = SoftwareLicense.find(params[:id]) 
    end
    
      def destroy
        #@device = Device.find(params[:device_id])
        @software_license = SoftwareLicense.find(params[:id])
        @software_license.destroy
        
        redirect_to software_licenses_path(@software_license)
    end
  
    private
        def software_license_params
            params.require(:software_license).permit(:name, :manufacturer, :version, :serial)
        end
end
