.class Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo$1;
.super Ljava/lang/Object;
.source "TranFingerprintInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;
    .locals 0

    .line 179
    new-instance p0, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;
    .locals 0

    .line 190
    new-array p0, p1, [Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo$1;->newArray(I)[Lcom/transsion/hubsdk/api/hardware/fingerprint/TranFingerprintInfo;

    move-result-object p0

    return-object p0
.end method
