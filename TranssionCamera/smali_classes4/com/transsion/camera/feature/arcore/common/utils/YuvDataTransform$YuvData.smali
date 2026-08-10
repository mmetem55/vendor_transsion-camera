.class public Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;
.super Ljava/lang/Object;
.source "YuvDataTransform.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YuvData"
.end annotation


# instance fields
.field private format:I

.field private height:I

.field private transformData:[B

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTransformData()V
    .locals 1

    .line 55
    monitor-enter p0

    const/4 v0, 0x0

    .line 56
    :try_start_0
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->transformData:[B

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->width:I

    .line 58
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->height:I

    .line 59
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->format:I

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFormat()I
    .locals 1

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->format:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->height:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTransformData()[B
    .locals 1

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->transformData:[B

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWidth()I
    .locals 1

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->width:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFormatAndData(III[B)V
    .locals 0

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->format:I

    .line 24
    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->transformData:[B

    .line 25
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->width:I

    .line 26
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->height:I

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "format:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",transformData length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->transformData:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
