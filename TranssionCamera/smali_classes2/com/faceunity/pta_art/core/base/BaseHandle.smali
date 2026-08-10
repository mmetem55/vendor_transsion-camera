.class public abstract Lcom/faceunity/pta_art/core/base/BaseHandle;
.super Ljava/lang/Object;
.source "BaseHandle.java"


# static fields
.field public static final FUItemHandler_what:I


# instance fields
.field protected final mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

.field protected final mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    invoke-static {}, Lcom/faceunity/pta_art/core/base/FUItemHandler;->generateWhatIndex()I

    move-result v0

    sput v0, Lcom/faceunity/pta_art/core/base/BaseHandle;->FUItemHandler_what:I

    return-void
.end method

.method public constructor <init>(Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/faceunity/pta_art/core/base/FUItemHandler;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    .line 16
    iput-object p2, p0, Lcom/faceunity/pta_art/core/base/BaseHandle;->mFUItemHandler:Lcom/faceunity/pta_art/core/base/FUItemHandler;

    return-void
.end method
