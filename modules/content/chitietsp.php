    <div class="thongbaosp"><h4>THÔNG TIN SẢN PHẨM<h4></div>
<div class="col-xs-12 col-sm-8 col-md-10 ">
        <?php 
                $id = $_GET['id'];
                $run = mysqli_query($conn,"SELECT * FROM sanpham where idSP = '$id'");
                while ($row=mysqli_fetch_array($run)) {
                    echo '
                        
                        <div class="col-xs-12 col-sm-6 col-md-7 " id="hinhsp">
                            <img src="admindt/update/'.$row['hinhanh'].'">
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-5 " id="chitiets">
                            <div class="gia_full">
                                <label class="ten">'.$row['tensp'].'</label>
                                    <label class="giasp">'.number_format($row['gia'],0,',','.').' VNĐ
                                        <b class="giacu" style="text-decoration: line-through;">25.000.000đ</b>
                                    </label>
                            </div>
                            <div class="gia_full">
                                <p class="baohanh">Mô tả:</p>
                                <p>'.$row['mota'].'</p>
                            </div>
                            <form method="get" action="">
                            <label class="baohanh">Số lượng</label>
                            <div class="qty mt-5">
                                <input type="number" id="sl'.$row['idSP'].'" class="count"  name="qty" value="1" onchange="kiemtraslmua('.$row['idSP'].')">
                            </div>
                            <button type="button"" class="them"  id="ct" onclick="updateitem('.$row['idSP'].')">THÊM VÀO GIỎ HÀNG</button>
                            </form>
                            <label>Gọi đặt mua: 1800.1060 (miễn phí - 7:30-22:00)</label>
                        </div>
                    ';
                }
         ?>
</div>
<div class="col-md-2 ">
            <div class="panel panel-default">
                <div class="panel-heading" style="background: #c4ddc8;">
                    <h2 class="panel-title">
                        CHÍNH SÁCH BÁN HÀNG</h2>
                </div>
                <ul class="list-group">
                    <a href="#" class="list-group-item">1 Giao hàng toàn quốc</a>
                    <a href="#" class="list-group-item">2 Thanh toán khi nhận hàng</a>
                    <a href="#" class="list-group-item">3 Đổi trả trong 15 ngày</a>
                    <a href="#" class="list-group-item">4 Hoàn tiền mặt ngay</a>
                    <a href="#" class="list-group-item">5 Chất lượng đảm bảo</a>
                    <a href="#" class="list-group-item">6 Miễn phí vận chuyển</a>
                </ul>
            </div>
        </div>              
<div class="col-xs-12 col-sm-8 col-md-12">
            <div class="col-xs-12 col-sm-12 col-md-12 " id="thongtinsp">
                    <div class="col-xs-12 col-sm-6 col-md-8">
                        <p>Đặc điểm nổi bật của giày</p>
                        <img src="images/bannerct.jpg">
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4">
                        <p class="title">Thông số giày : </p>
                        <p><span class="l">Các loại size:</span><span class="r"> 30,31,31,32,33,34,35,36,37,38</span></p>
                        <p style="border-bottom:none;"><span class="l">Các loại màu:</span><span class="r">Trắng, xanh, đỏ, vàng,đen</span></p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12 " id="danhgia">
                    <hr>
                    <h2>- Nike là một trong các loại giày được khách hàng tin dùng nhất hiện nay.</h2>
                        <p>- Nike được xem như một gã khổng lồ trong ngành hàng thời trang thể thao, khách hàng có thể định vị thương hiệu của Nike qua những sản phẩm chất lượng cao, thiết kế kiểu dáng đẹp, thu hút thị hiếu của công chúng. </p>
                       <p> - Nike là một tập đoàn đa quốc gia của Mỹ có trụ sở chính được đặt tại Washington County, Oregon, Mỹ. Nike có nhà máy sản xuất ở rất nhiều các quốc gia với số lượng nhân viên làm việc là hơn 70,000 người.
                    </p>
                </div>
</div>