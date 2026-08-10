.class public Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo;
.super Ljava/lang/Object;
.source "DualDeviceGroupInfo.java"


# static fields
.field private static final DUAL_DEVICE_GROUP_LIST_ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final DUAL_DEVICE_GROUP_LIST_MAIN_TELE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final DUAL_DEVICE_GROUP_LIST_ONLY_MAIN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final DUAL_DEVICE_GROUP_LIST_WIDE_MAIN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo;->DUAL_DEVICE_GROUP_LIST_ONLY_MAIN:Ljava/util/List;

    .line 16
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo;->DUAL_DEVICE_GROUP_LIST_WIDE_MAIN:Ljava/util/List;

    .line 23
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo;->DUAL_DEVICE_GROUP_LIST_MAIN_TELE:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo$4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo;->DUAL_DEVICE_GROUP_LIST_ALL:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVideoFilterItem(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "type_tele_main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "type_all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "type_main_only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "type_wide_main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :pswitch_0
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo;->DUAL_DEVICE_GROUP_LIST_MAIN_TELE:Ljava/util/List;

    return-object p0

    .line 49
    :pswitch_1
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo;->DUAL_DEVICE_GROUP_LIST_ALL:Ljava/util/List;

    return-object p0

    .line 43
    :pswitch_2
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo;->DUAL_DEVICE_GROUP_LIST_ONLY_MAIN:Ljava/util/List;

    return-object p0

    .line 45
    :pswitch_3
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo;->DUAL_DEVICE_GROUP_LIST_WIDE_MAIN:Ljava/util/List;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x457d5b20 -> :sswitch_3
        -0x37573853 -> :sswitch_2
        -0x284af4e4 -> :sswitch_1
        0x5627e69 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
