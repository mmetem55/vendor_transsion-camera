.class public Lcom/transsion/camera/feature/burstpmk/BurstPMKModeHelper;
.super Lcom/transsion/camera/feature/common/CommonModeHelper;
.source "BurstPMKModeHelper.java"


# static fields
.field private static final IMAGE_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss_S_\'Panorama\'"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/CommonModeHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected generateTitle(J)Ljava/lang/String;
    .locals 2

    .line 25
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss_S_\'Panorama\'"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    .line 26
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
