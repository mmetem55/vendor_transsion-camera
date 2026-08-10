.class public Lcom/transsion/camera/feature/mode/doc/object/AddData;
.super Ljava/lang/Object;
.source "AddData.java"


# static fields
.field private static final mInstance:Lcom/transsion/camera/feature/mode/doc/object/AddData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/transsion/camera/feature/mode/doc/object/AddData;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/doc/object/AddData;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/object/AddData;->mInstance:Lcom/transsion/camera/feature/mode/doc/object/AddData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/feature/mode/doc/object/AddData;
    .locals 1

    .line 5
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/AddData;->mInstance:Lcom/transsion/camera/feature/mode/doc/object/AddData;

    return-object v0
.end method


# virtual methods
.method public addFloatPoint(Lcom/transsion/camera/feature/mode/doc/object/Type;[F)V
    .locals 0

    .line 11
    sget-object p0, Lcom/transsion/camera/feature/mode/doc/object/AddData$1;->$SwitchMap$com$transsion$camera$feature$mode$doc$object$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    sput-object p2, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    goto :goto_0

    .line 13
    :cond_1
    sput-object p2, Lcom/transsion/camera/feature/mode/doc/object/Data;->pointCoords:[F

    :goto_0
    return-void
.end method
