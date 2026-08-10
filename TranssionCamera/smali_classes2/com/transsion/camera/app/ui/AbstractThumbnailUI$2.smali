.class Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;
.super Ljava/lang/Object;
.source "AbstractThumbnailUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->updateThumbnail(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$needAnimation:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->val$needAnimation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "updateThumbnailView"

    .line 235
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$700(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$800(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->hideThumbnailBg()V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[CapturePerformance] updateThumbnailView null."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 244
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 245
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$700(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$700(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$902(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Z)Z

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$1000(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$300(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$100(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CapturePerformance] updateThumbnailView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->val$bitmap:Landroid/graphics/Bitmap;

    .line 256
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    :goto_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->val$needAnimation:Z

    if-eqz v0, :cond_4

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$300(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->aodAnimation()V

    goto :goto_2

    .line 262
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    const-wide/16 v1, 0x50

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/utils/AnimationUtils;->startScaleAnimation(Landroid/view/View;JFFFF)V

    .line 266
    :cond_4
    :goto_2
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 267
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setShot2SeeEndTime()V

    return-void
.end method
