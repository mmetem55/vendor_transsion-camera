.class public Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout;
.super Landroid/widget/LinearLayout;
.source "FaceBeautyTopLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout$BarClickListener;
    }
.end annotation


# instance fields
.field private mFaceBeautyBar:Landroid/view/View;

.field private mListener:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout$BarClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout;->mListener:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout$BarClickListener;

    if-eqz p0, :cond_0

    .line 20
    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout$BarClickListener;->barOnClick()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090189

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout;->mFaceBeautyBar:Landroid/view/View;

    .line 54
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setListener(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout$BarClickListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout;->mListener:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout$BarClickListener;

    return-void
.end method
