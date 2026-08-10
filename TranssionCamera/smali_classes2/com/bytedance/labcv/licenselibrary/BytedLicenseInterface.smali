.class public interface abstract Lcom/bytedance/labcv/licenselibrary/BytedLicenseInterface;
.super Ljava/lang/Object;
.source "BytedLicenseInterface.java"


# virtual methods
.method public abstract clearParams()V
.end method

.method public abstract getLicenseWithParams(Ljava/util/HashMap;ZLcom/bytedance/labcv/licenselibrary/LicenseCallback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/labcv/licenselibrary/LicenseCallback;",
            ")I"
        }
    .end annotation
.end method

.method public abstract getParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerHttpProvider(Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider;)V
.end method

.method public abstract setParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateLicenseWithParams(Ljava/util/HashMap;ZLcom/bytedance/labcv/licenselibrary/LicenseCallback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/labcv/licenselibrary/LicenseCallback;",
            ")I"
        }
    .end annotation
.end method
