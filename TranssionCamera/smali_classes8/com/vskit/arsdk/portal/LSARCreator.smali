.class public Lcom/vskit/arsdk/portal/LSARCreator;
.super Ljava/lang/Object;
.source "LSARCreator.java"


# direct methods
.method public static getARInstance()Lcom/vskit/arsdk/portal/ARIManager;
    .locals 1

    .line 7
    new-instance v0, Lcom/vskit/arsdk/LSArManager;

    invoke-direct {v0}, Lcom/vskit/arsdk/LSArManager;-><init>()V

    return-object v0
.end method
