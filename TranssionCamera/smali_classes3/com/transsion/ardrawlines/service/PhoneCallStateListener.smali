.class public Lcom/transsion/ardrawlines/service/PhoneCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneCallStateListener.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/transsion/ardrawlines/service/PhoneCallStateListener;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/transsion/ardrawlines/service/PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public phoneIsInUse()Z
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/ardrawlines/service/PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
