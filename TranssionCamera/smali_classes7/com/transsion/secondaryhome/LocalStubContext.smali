.class public Lcom/transsion/secondaryhome/LocalStubContext;
.super Landroid/content/ContextWrapper;
.source "LocalStubContext.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# instance fields
.field private mRemoteContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lcom/transsion/secondaryhome/LocalStubContext;->mRemoteContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getRemoteContext()Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/secondaryhome/LocalStubContext;->mRemoteContext:Landroid/content/Context;

    return-object p0
.end method
