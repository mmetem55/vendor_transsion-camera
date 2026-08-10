.class Lcom/faceunity/entity/AvatarModel$1;
.super Ljava/lang/Object;
.source "AvatarModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/faceunity/entity/AvatarModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/faceunity/entity/AvatarModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/faceunity/entity/AvatarModel;
    .locals 0

    .line 162
    new-instance p0, Lcom/faceunity/entity/AvatarModel;

    invoke-direct {p0, p1}, Lcom/faceunity/entity/AvatarModel;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lcom/faceunity/entity/AvatarModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/faceunity/entity/AvatarModel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/faceunity/entity/AvatarModel;
    .locals 0

    .line 167
    new-array p0, p1, [Lcom/faceunity/entity/AvatarModel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lcom/faceunity/entity/AvatarModel$1;->newArray(I)[Lcom/faceunity/entity/AvatarModel;

    move-result-object p0

    return-object p0
.end method
