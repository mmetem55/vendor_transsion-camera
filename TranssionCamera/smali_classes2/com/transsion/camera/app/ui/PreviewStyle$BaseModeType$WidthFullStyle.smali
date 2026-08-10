.class public Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;
.super Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
.source "PreviewStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WidthFullStyle"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V
    .locals 2

    .line 297
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    const-string v0, "width_full_style"

    const/4 v1, 0x0

    .line 298
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Ljava/lang/String;Lcom/transsion/camera/app/ui/PreviewStyle$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Lcom/transsion/camera/app/ui/PreviewStyle$1;)V
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V

    return-void
.end method


# virtual methods
.method protected onEntry(Z)V
    .locals 2

    .line 303
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->onEntry(Z)V

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1600(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1700(Lcom/transsion/camera/app/ui/PreviewStyle;)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1800(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/ScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1700(Lcom/transsion/camera/app/ui/PreviewStyle;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    if-eqz p1, :cond_1

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1600(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x15e

    .line 315
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    .line 316
    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1900(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/animation/PathInterpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 317
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 319
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1600(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1600(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void

    .line 305
    :cond_2
    :goto_1
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid entry, style: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    .line 306
    invoke-static {v1}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1600(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mViewWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1700(Lcom/transsion/camera/app/ui/PreviewStyle;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 305
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method sizeChanged()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1600(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1700(Lcom/transsion/camera/app/ui/PreviewStyle;)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1800(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/ScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1700(Lcom/transsion/camera/app/ui/PreviewStyle;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 332
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1600(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1600(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 327
    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sizeChanged, style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    .line 328
    invoke-static {v2}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1600(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mViewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$WidthFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1700(Lcom/transsion/camera/app/ui/PreviewStyle;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 327
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
