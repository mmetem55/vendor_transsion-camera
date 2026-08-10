.class Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo$3;
.super Ljava/util/ArrayList;
.source "DualDeviceGroupInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_device_main_tele:I

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$string;->dual_device_group_main_Tele:I

    const-string v3, "2_0"

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_device_front_main:I

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$string;->dual_device_group_front_main:I

    const-string v3, "0_1"

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
