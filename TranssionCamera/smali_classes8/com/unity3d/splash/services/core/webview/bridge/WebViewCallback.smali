.class public Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private _callbackId:Ljava/lang/String;

.field private _invocationId:I

.field private _invoked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback$1;

    invoke-direct {v0}, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback$1;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invoked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invocationId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const p0, 0xb26e

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_callbackId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invoked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p0, p0, Lcom/unity3d/splash/services/core/webview/bridge/WebViewCallback;->_invocationId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
