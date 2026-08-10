.class Landroidx/core/provider/DocumentsContractCompat$DocumentsContractApi19Impl;
.super Ljava/lang/Object;
.source "DocumentsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/DocumentsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentsContractApi19Impl"
.end annotation


# direct methods
.method static getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 266
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 0

    .line 261
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method
