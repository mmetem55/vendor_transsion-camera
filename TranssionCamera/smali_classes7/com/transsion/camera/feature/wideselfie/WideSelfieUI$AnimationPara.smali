.class Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;
.super Ljava/lang/Object;
.source "WideSelfieUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationPara"
.end annotation


# instance fields
.field dstArrowHeight:I

.field dstArrowWidth:I

.field dstGravity:I

.field dstMarginBottom:I

.field dstMarginLeft:I

.field dstMarginRight:I

.field dstMarginTop:I

.field final synthetic this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$1;)V
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)V

    return-void
.end method


# virtual methods
.method public updateArrowWidthAndHeight(I)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowWidthLand:I

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowWidth:I

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3e5652bd    # 0.2093f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowHeight:I

    .line 303
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    iget-boolean v1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIsSupportFoldUI:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$400(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowHeightLand:I

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowHeight:I

    goto :goto_0

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowWidth:I

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowWidth:I

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3e554c98    # 0.2083f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowHeight:I

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    iget-boolean v1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIsSupportFoldUI:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$500(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowHeight:I

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowHeight:I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateRootLayoutMargin(I)V
    .locals 6

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$600(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 319
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v2, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const v2, 0x3dddcc64    # 0.1083f

    const/16 v4, 0x10e

    if-ne p1, v4, :cond_0

    const/4 v5, 0x5

    .line 321
    iput v5, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    .line 322
    iget-object v5, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v5}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v2, v5

    iget-object v5, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    .line 323
    invoke-static {v5}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    .line 324
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v5, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowWidth:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    goto :goto_0

    :cond_0
    const/16 v5, 0x5a

    if-ne p1, v5, :cond_1

    const/4 v5, 0x3

    .line 326
    iput v5, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    .line 327
    iget-object v5, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v5}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v2, v5

    iget-object v5, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    .line 328
    invoke-static {v5}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    .line 329
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v5, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowWidth:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    .line 331
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    iget-boolean v2, v1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIsSupportFoldUI:Z

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$700(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 332
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 333
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowWidthLand:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    shr-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    if-ne p1, v4, :cond_2

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowTopMarginLand:I

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    goto/16 :goto_1

    .line 337
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowTopMarginLand:I

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    goto :goto_1

    .line 341
    :cond_3
    iput v3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e437b4a    # 0.1909f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    const/4 v0, 0x0

    .line 343
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    .line 344
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    iget-boolean v1, v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIsSupportFoldUI:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$800(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    if-ne v0, v3, :cond_5

    if-nez p1, :cond_4

    .line 347
    iget p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    or-int/lit8 p1, p1, 0x30

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowTopMargin:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    goto :goto_1

    :cond_4
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 350
    iget p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    or-int/lit8 p1, p1, 0x50

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowTopMargin:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginBottom:I

    :cond_5
    :goto_1
    return-void
.end method
