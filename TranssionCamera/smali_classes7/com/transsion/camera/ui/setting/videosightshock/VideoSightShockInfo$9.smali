.class Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo$9;
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

    .line 146
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const-string v1, "key_video_frame_style"

    const v2, 0x7f080ca5

    const v3, 0x7f10037b

    const-string v4, "0"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const v2, 0x7f080978

    const v3, 0x7f100365

    const-string v4, "1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const v2, 0x7f08097c

    const v3, 0x7f100369

    const-string v4, "2"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const v2, 0x7f08097b

    const v3, 0x7f100368

    const-string v4, "3"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const v2, 0x7f080979

    const v3, 0x7f100366

    const-string v4, "6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const v2, 0x7f080977

    const v3, 0x7f100364

    const-string v4, "5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    const v2, 0x7f08097a

    const v3, 0x7f100367

    const-string v4, "4"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
