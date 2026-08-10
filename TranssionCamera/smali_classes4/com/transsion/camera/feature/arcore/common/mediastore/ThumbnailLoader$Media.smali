.class Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;
.super Ljava/lang/Object;
.source "ThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Media"
.end annotation


# instance fields
.field public final dateTaken:J

.field public final filePath:Ljava/lang/String;

.field public final id:J

.field public final mediaType:I

.field public final orientation:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JIJLandroid/net/Uri;ILjava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->id:J

    .line 68
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->orientation:I

    .line 69
    iput-wide p4, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->dateTaken:J

    .line 70
    iput-object p6, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->uri:Landroid/net/Uri;

    .line 71
    iput p7, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->mediaType:I

    .line 72
    iput-object p8, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dateTaken="

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->dateTaken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->uri:Landroid/net/Uri;

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->mediaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
