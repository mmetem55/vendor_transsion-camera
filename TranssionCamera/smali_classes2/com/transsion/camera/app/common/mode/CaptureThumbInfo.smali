.class public Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;
.super Ljava/lang/Object;
.source "CaptureThumbInfo.java"


# instance fields
.field public captureFail:Z

.field public final id:Ljava/lang/String;

.field public preProcessed:Z

.field public thumbnilType:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->id:Ljava/lang/String;

    .line 13
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->captureFail:Z

    .line 15
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->preProcessed:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureThumbInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnilType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", captureFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->captureFail:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
