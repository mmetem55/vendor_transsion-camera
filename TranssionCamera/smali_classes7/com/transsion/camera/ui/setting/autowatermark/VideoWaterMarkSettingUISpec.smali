.class public Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkSettingUISpec;
.super Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUISpec;
.source "VideoWaterMarkSettingUISpec.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initSummary(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const v0, 0x7f100389

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-object p0
.end method
