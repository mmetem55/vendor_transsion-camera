.class Lcom/transsion/camera/app/ui/PreviewBackground$SimpleBackground;
.super Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;
.source "PreviewBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleBackground"
.end annotation


# instance fields
.field private mBgView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;-><init>(Lcom/transsion/camera/app/ui/PreviewBackground$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewBackground$1;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$SimpleBackground;-><init>()V

    return-void
.end method


# virtual methods
.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c002a

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SimpleBackground;->mBgView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 157
    invoke-virtual {p2, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    return-object p2
.end method

.method public onTypeChanged(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->onTypeChanged(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)V

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SimpleBackground;->mBgView:Landroid/view/View;

    if-nez p0, :cond_0

    .line 166
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewBackground;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mBgView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 170
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 172
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
