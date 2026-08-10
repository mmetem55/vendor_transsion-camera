.class public abstract Lcom/transsion/camera/adapter/CameraAgent$Customer;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Customer"
.end annotation


# static fields
.field private static gCurrent:J


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mDynamicPriority:J

.field private final mId:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mId:J

    return-void
.end method


# virtual methods
.method public getCameraId()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getDynamicPriority()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mDynamicPriority:J

    return-wide v0
.end method

.method public isPriority(Lcom/transsion/camera/adapter/CameraAgent$Customer;)Z
    .locals 3

    .line 69
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent$Customer;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-wide v1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mDynamicPriority:J

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getDynamicPriority()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCameraId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Customer{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDynamicPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mDynamicPriority:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "} @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDynamicPriority()V
    .locals 5

    .line 59
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent$Customer;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-wide v1, Lcom/transsion/camera/adapter/CameraAgent$Customer;->gCurrent:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/transsion/camera/adapter/CameraAgent$Customer;->gCurrent:J

    iput-wide v1, p0, Lcom/transsion/camera/adapter/CameraAgent$Customer;->mDynamicPriority:J

    .line 61
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
