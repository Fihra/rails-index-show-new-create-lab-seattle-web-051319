class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
        render :index
    end     

    def show
        @coupon = Coupon.find(params[:id])
        render :show
    end

    def new
        @coupon = Coupon.new
        render :new
    end

    def create
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        @coupon.save
        # byebug
        redirect_to coupon_path(@coupon)

    end

end
