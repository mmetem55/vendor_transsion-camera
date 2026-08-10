.class public Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;
.super Ljava/lang/Object;
.source "SecureCameraActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/SecureCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mId:J

.field private final mSecureAlbum:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mUri:Landroid/net/Uri;

    .line 75
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mId:J

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "video/"

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "+true"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mSecureAlbum:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "+false"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mSecureAlbum:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mId:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mSecureAlbum:Ljava/lang/String;

    .line 89
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mUri:Landroid/net/Uri;

    check-cast p1, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    iget-object p1, p1, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mUri:Landroid/net/Uri;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method getAlbum()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mSecureAlbum:Ljava/lang/String;

    return-object p0
.end method

.method getId()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mId:J

    return-wide v0
.end method

.method getUri()Landroid/net/Uri;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mSecureAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
