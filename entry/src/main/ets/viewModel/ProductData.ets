export class ProductData {
  productId: number;
  productImg: Resource;
  productName: string;
  productDate: string;
  productNum: number;
  productStatus: string;

  constructor(productId: number,
  productImg: Resource,
  productName: string,
  productDate: string,
  productNum: number,
  productStatus: string) {
    this.productId = productId;
    this.productImg = productImg;
    this.productName = productName;
    this.productDate = productDate;
    this.productNum = productNum;
    this.productStatus = productStatus
  }
}
export const productList: ProductData[] = [
  new ProductData(1, $r('app.media.avocado'),'牛油果','12月1日',10,'过期')
]