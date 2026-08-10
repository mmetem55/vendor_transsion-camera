.class Lcom/transsion/camera/feature/common/DataStream;
.super Ljava/lang/Object;
.source "DataStream.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/IDataStream;
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# static fields
.field private static final PIXEL_STRIDE_2:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

.field private final mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private mFormatInit:Z

.field private mFrameData:[B

.field private final mFrameDataLock:Ljava/lang/Object;

.field private final mGuardLock:Ljava/lang/Object;

.field private mHeight:I

.field private mImageFormat:I

.field private mStreamListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

.field private mStreamState:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/common/DataStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 33
    iput v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamState:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameDataLock:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-void
.end method


# virtual methods
.method public createStream()V
    .locals 2

    .line 142
    sget-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createStream"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 144
    :try_start_0
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    .line 145
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    .line 146
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFormatInit:Z

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    return-void

    :catchall_0
    move-exception p0

    .line 147
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public destroyStream()V
    .locals 2

    .line 161
    sget-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "destroyStream"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 163
    :try_start_0
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    .line 164
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    .line 165
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFormatInit:Z

    .line 166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/common/DataStream;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    return-void

    :catchall_0
    move-exception p0

    .line 166
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPreviewFrame(Landroid/media/Image;II)V
    .locals 9

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFormatInit:Z

    const/16 v2, 0x11

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    if-ne p2, v1, :cond_0

    iget v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    if-eq p3, v1, :cond_2

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 56
    iput v2, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    goto :goto_0

    :cond_1
    const v1, 0x32315659

    .line 58
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    .line 61
    :goto_0
    iput-boolean v3, p0, Lcom/transsion/camera/feature/common/DataStream;->mFormatInit:Z

    .line 62
    iput p2, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    .line 63
    iput p3, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    .line 64
    sget-object v1, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStreamAvailable mImageFormat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

    if-eqz v1, :cond_2

    .line 68
    iget v5, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-interface {v1, p2, p3, v5}, Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;->onStreamAvailable(III)V

    .line 72
    :cond_2
    iget-boolean v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamState:Z

    if-nez v1, :cond_3

    .line 73
    monitor-exit v0

    return-void

    .line 75
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 78
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 79
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 83
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v4, v6, v4

    .line 84
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 87
    iget v7, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    if-ne v2, v7, :cond_6

    add-int p1, v5, v6

    add-int/2addr p1, v3

    .line 90
    iget-object v2, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 91
    :try_start_1
    iget-object v3, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    if-eqz v3, :cond_4

    array-length v3, v3

    if-eq v3, p1, :cond_5

    .line 92
    :cond_4
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    .line 95
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v0, p1, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v4, p1, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 97
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 100
    :cond_6
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p1, p1, v3

    .line 101
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int v3, v5, v2

    add-int/2addr v3, v6

    .line 106
    iget-object v7, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameDataLock:Ljava/lang/Object;

    monitor-enter v7

    .line 107
    :try_start_2
    iget-object v8, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    if-eqz v8, :cond_7

    array-length v8, v8

    if-eq v8, v3, :cond_8

    .line 108
    :cond_7
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    .line 111
    :cond_8
    iget-object v3, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v0, v3, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v4, v0, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    add-int/2addr v5, v6

    invoke-virtual {p1, v0, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 114
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter p1

    .line 118
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    if-eqz v0, :cond_9

    .line 119
    sget-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataAvailable width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameDataLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget p0, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-interface {v0, v1, p2, p3, p0}, Lcom/transsion/camera/feature/common/IDataStream$IDataListener;->onDataAvailable(Landroid/util/Pair;III)V

    .line 123
    :cond_9
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 114
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 75
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method

.method public setDataListener(Lcom/transsion/camera/feature/common/IDataStream$IDataListener;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setStreamListener(Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateState(Z)V
    .locals 3

    .line 153
    sget-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamState:Z

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
