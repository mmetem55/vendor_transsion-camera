.class public Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;
.super Ljava/lang/Object;
.source "DualDeviceGroupItem.java"


# instance fields
.field public final dualDeviceGroupId:Ljava/lang/String;

.field public final dualDeviceHintId:I

.field public final dualIconId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;->dualIconId:I

    .line 11
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;->dualDeviceGroupId:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;->dualDeviceHintId:I

    return-void
.end method
