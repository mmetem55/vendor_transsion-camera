.class Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;
.super Ljava/lang/Object;
.source "ThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Media"
.end annotation


# instance fields
.field public final dateAdded:J

.field public final dateModified:J

.field public final dateTaken:J

.field public final filePath:Ljava/lang/String;

.field public final id:J

.field public final mediaType:I

.field public final orientation:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JIJJJLandroid/net/Uri;ILjava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->id:J

    .line 73
    iput p3, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->orientation:I

    .line 74
    iput-wide p4, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->dateTaken:J

    .line 75
    iput-wide p6, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->dateModified:J

    .line 76
    iput-wide p8, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->dateAdded:J

    .line 77
    iput-object p10, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->uri:Landroid/net/Uri;

    .line 78
    iput p11, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->mediaType:I

    .line 79
    iput-object p12, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dateModified="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->dateModified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dateAdded="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->dateAdded:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dateTaken="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->dateTaken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->uri:Landroid/net/Uri;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->mediaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
