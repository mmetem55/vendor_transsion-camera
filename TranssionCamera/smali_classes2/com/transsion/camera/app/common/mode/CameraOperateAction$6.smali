.class Lcom/transsion/camera/app/common/mode/CameraOperateAction$6;
.super Ljava/util/HashMap;
.source "CameraOperateAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraOperateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 455
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x3e9

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3ea

    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0xf
        0xb
        0x15
        0x21
        0x27
        0x2d
        0xc
        0x16
        0x22
        0x28
        0x2e
        0x5d
    .end array-data

    :array_1
    .array-data 4
        0xd
        0xe
    .end array-data
.end method
