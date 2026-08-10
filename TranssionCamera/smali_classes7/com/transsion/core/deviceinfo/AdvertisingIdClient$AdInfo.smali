.class public final Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/core/deviceinfo/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final limitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    .line 33
    iput-boolean p2, p0, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    return-object p0
.end method
