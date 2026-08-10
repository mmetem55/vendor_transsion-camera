.class Lcom/transsion/camera/feature/mode/movie/MovieInfo$1;
.super Ljava/lang/Object;
.source "MovieInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/MovieInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/camera/feature/mode/movie/MovieInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/camera/feature/mode/movie/MovieInfo;
    .locals 0

    .line 116
    new-instance p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/camera/feature/mode/movie/MovieInfo;
    .locals 0

    .line 121
    new-array p0, p1, [Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo$1;->newArray(I)[Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    move-result-object p0

    return-object p0
.end method
