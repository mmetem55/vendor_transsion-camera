.class public abstract Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;
.super Ljava/lang/Object;
.source "FUItemHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/faceunity/pta_art/core/base/FUItemHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LoadFUItemListener"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public abstract onLoadComplete(Lcom/faceunity/pta_art/core/base/FUItem;)V
.end method
