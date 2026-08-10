.class public final enum Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
.super Ljava/lang/Enum;
.source "ProcessMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

.field public static final enum NORMAL:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

.field public static final enum ULTRAHD:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;


# instance fields
.field private final identifier:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 108
    new-instance v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    const-string v1, "ULTRAHD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->ULTRAHD:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    .line 112
    new-instance v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    const-string v4, "NORMAL"

    invoke-direct {v1, v4, v3, v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->NORMAL:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 104
    sput-object v4, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->$VALUES:[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->identifier:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
    .locals 1

    .line 104
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
    .locals 1

    .line 104
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->$VALUES:[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()I
    .locals 0

    .line 121
    iget p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->identifier:I

    return p0
.end method
