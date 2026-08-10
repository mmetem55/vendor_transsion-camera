.class Lcom/faceunity/entity/LivePhoto$1;
.super Ljava/lang/Object;
.source "LivePhoto.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/faceunity/entity/LivePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/faceunity/entity/LivePhoto;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/faceunity/entity/LivePhoto;
    .locals 0

    .line 466
    new-instance p0, Lcom/faceunity/entity/LivePhoto;

    invoke-direct {p0, p1}, Lcom/faceunity/entity/LivePhoto;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/faceunity/entity/LivePhoto$1;->createFromParcel(Landroid/os/Parcel;)Lcom/faceunity/entity/LivePhoto;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/faceunity/entity/LivePhoto;
    .locals 0

    .line 471
    new-array p0, p1, [Lcom/faceunity/entity/LivePhoto;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/faceunity/entity/LivePhoto$1;->newArray(I)[Lcom/faceunity/entity/LivePhoto;

    move-result-object p0

    return-object p0
.end method
