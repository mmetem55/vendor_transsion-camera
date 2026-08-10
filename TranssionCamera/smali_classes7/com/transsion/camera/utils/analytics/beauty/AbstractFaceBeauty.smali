.class public abstract Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;
.super Ljava/lang/Object;
.source "AbstractFaceBeauty.java"

# interfaces
.implements Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;


# instance fields
.field private mEnable:Z

.field private final mNext:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->mEnable:Z

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->mNext:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    return-void
.end method


# virtual methods
.method public final getReportValue()Ljava/lang/String;
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->mEnable:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->mNext:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    if-eqz p0, :cond_1

    .line 58
    invoke-interface {p0}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final getReportValueInt()I
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->mEnable:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->getReportValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->getReportValueInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->mNext:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    if-eqz p0, :cond_1

    .line 70
    invoke-interface {p0}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValueInt()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getReportValueInt(Ljava/lang/String;)I
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->mEnable:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->getValue(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->mNext:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    if-eqz p0, :cond_1

    .line 82
    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValueInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected abstract getValue(Ljava/lang/String;)I
.end method

.method protected abstract getValue()Ljava/lang/String;
.end method

.method public final setEnable(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->mEnable:Z

    return-void
.end method
