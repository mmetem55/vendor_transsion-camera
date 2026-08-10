.class public Lcom/transsion/secondaryhome/ParcelUtil;
.super Ljava/lang/Object;
.source "ParcelUtil.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParcelableInByteArray([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 32
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    return-object p0
.end method

.method public static parcel2Bytes(Landroid/os/Parcel;)[B
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    return-object p0
.end method

.method public static parcel2Bytes(Landroid/os/Parcelable;)[B
    .locals 2

    .line 25
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 27
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 28
    invoke-static {v0}, Lcom/transsion/secondaryhome/ParcelUtil;->parcel2Bytes(Landroid/os/Parcel;)[B

    move-result-object p0

    return-object p0
.end method
