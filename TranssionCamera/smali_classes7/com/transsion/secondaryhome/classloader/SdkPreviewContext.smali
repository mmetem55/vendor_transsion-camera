.class public Lcom/transsion/secondaryhome/classloader/SdkPreviewContext;
.super Landroid/content/ContextWrapper;
.source "SdkPreviewContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdkPreviewContext"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=======> new SdkPreviewContext!!!!!2 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdkPreviewContext"

    invoke-static {p1, p0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "new SdkPreviewContext!!!!!"

    .line 23
    invoke-static {p1, p0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdkPreviewContext ===> getApplicationContext  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkPreviewContext"

    invoke-static {v1, v0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    .line 34
    const-class p0, Lcom/transsion/secondaryhome/classloader/SdkPreviewContext;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method
