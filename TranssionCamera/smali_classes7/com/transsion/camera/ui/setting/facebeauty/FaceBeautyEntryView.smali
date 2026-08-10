.class public Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;
.super Landroid/widget/FrameLayout;
.source "FaceBeautyEntryView.java"


# instance fields
.field private mEnable:Z

.field private mIsAnim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;->mEnable:Z

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;->mIsAnim:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;->mIsAnim:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 47
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;->mEnable:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 50
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;->mIsAnim:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 31
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAnimState(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;->mIsAnim:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;->mEnable:Z

    return-void
.end method
