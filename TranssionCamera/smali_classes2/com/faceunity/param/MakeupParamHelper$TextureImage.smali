.class public final Lcom/faceunity/param/MakeupParamHelper$TextureImage;
.super Ljava/lang/Object;
.source "MakeupParamHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/faceunity/param/MakeupParamHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextureImage"
.end annotation


# instance fields
.field private bytes:[B

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcom/faceunity/param/MakeupParamHelper$TextureImage;->width:I

    .line 141
    iput p2, p0, Lcom/faceunity/param/MakeupParamHelper$TextureImage;->height:I

    .line 142
    iput-object p3, p0, Lcom/faceunity/param/MakeupParamHelper$TextureImage;->bytes:[B

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/faceunity/param/MakeupParamHelper$TextureImage;->bytes:[B

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 150
    iget p0, p0, Lcom/faceunity/param/MakeupParamHelper$TextureImage;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 146
    iget p0, p0, Lcom/faceunity/param/MakeupParamHelper$TextureImage;->width:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextureImage{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/param/MakeupParamHelper$TextureImage;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/param/MakeupParamHelper$TextureImage;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/faceunity/param/MakeupParamHelper$TextureImage;->bytes:[B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
