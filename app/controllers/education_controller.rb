class EducationController < ApplicationController
  def index
    redirect_to :action => "nurseries"
  end
  def nurseries
    @nurseries= Nursery.all :order => "name"
  end
  def students
    @nursery= Nursery.find params[:id]
  end
  def create_nursery
    Nursery.create $xvars[:enter][:nursery]
    gma_notice "ขึ้นทะเบียนเรียบร้อยแล้ว"
    $xvars[:p][:return]="/education/nurseries"
  end
  def update_nursery
    nursery= Nursery.find $xvars[:p][:id]
    nursery.update_attributes $xvars[:edit][:nursery]
    gma_notice "แก้ไขข้อมูลเรียบร้อยแล้ว"
    $xvars[:p][:return]= "/education/nurseries"
  end
  def rm_nursery
    nursery= Nursery.find $xvars[:p][:id]
    gma_notice "ลบข้อมูลเรียบร้อยแล้ว"
    nursery.destroy
    $xvars[:p][:return]= "/education/nurseries"
  end
end
