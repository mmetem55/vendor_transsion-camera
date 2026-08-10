.class public Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
.super Lcom/transsion/camera/adapter/platformcamera/Key;
.source "CaptureResultKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/transsion/camera/adapter/platformcamera/Key;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mResultKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureResultKey"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/transsion/camera/adapter/platformcamera/Key;-><init>()V

    .line 12
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->mResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method


# virtual methods
.method public bridge synthetic getStatus()I
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/transsion/camera/adapter/platformcamera/Key;->getStatus()I

    move-result p0

    return p0
.end method

.method public getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 26
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->mResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->setStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    sget-object v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValue error, this key is not define: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->mResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->setStatus(I)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic isExist()Z
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/transsion/camera/adapter/platformcamera/Key;->isExist()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setStatus(I)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/Key;->setStatus(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->mResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
