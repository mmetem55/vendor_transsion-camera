.class Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo$7;
.super Ljava/util/ArrayList;
.source "VideoSightShockInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .line 122
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const-string v1, "key_video_effect_style"

    const v2, 0x7f080ca5

    const v3, 0x7f10037b

    const-string v4, "0"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const v2, 0x7f080975

    const v3, 0x7f100349

    const-string v4, "1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const v2, 0x7f080972

    const v3, 0x7f100346

    const-string v4, "3"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const v2, 0x7f080973

    const v3, 0x7f100347

    const-string v4, "5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const v2, 0x7f080976

    const v3, 0x7f10034a

    const-string v4, "6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const v2, 0x7f080971

    const v3, 0x7f100345

    const-string v4, "2"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const v2, 0x7f080974

    const v3, 0x7f100348

    const-string v4, "4"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
