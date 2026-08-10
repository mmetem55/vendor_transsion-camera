.class public final enum Lcom/bef/effectsdk/view/BEFView$FitMode;
.super Ljava/lang/Enum;
.source "BEFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/effectsdk/view/BEFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FitMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bef/effectsdk/view/BEFView$FitMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bef/effectsdk/view/BEFView$FitMode;

.field public static final enum FILL_SCREEN:Lcom/bef/effectsdk/view/BEFView$FitMode;

.field public static final enum FIT_HEIGHT:Lcom/bef/effectsdk/view/BEFView$FitMode;

.field public static final enum FIT_WIDTH:Lcom/bef/effectsdk/view/BEFView$FitMode;

.field public static final enum FIT_WIDTH_BOTTOM:Lcom/bef/effectsdk/view/BEFView$FitMode;

.field public static final enum NO_CLIP:Lcom/bef/effectsdk/view/BEFView$FitMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 246
    new-instance v0, Lcom/bef/effectsdk/view/BEFView$FitMode;

    const-string v1, "FIT_WIDTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bef/effectsdk/view/BEFView$FitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bef/effectsdk/view/BEFView$FitMode;->FIT_WIDTH:Lcom/bef/effectsdk/view/BEFView$FitMode;

    new-instance v1, Lcom/bef/effectsdk/view/BEFView$FitMode;

    const-string v3, "FIT_HEIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bef/effectsdk/view/BEFView$FitMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bef/effectsdk/view/BEFView$FitMode;->FIT_HEIGHT:Lcom/bef/effectsdk/view/BEFView$FitMode;

    new-instance v3, Lcom/bef/effectsdk/view/BEFView$FitMode;

    const-string v5, "FILL_SCREEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bef/effectsdk/view/BEFView$FitMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bef/effectsdk/view/BEFView$FitMode;->FILL_SCREEN:Lcom/bef/effectsdk/view/BEFView$FitMode;

    new-instance v5, Lcom/bef/effectsdk/view/BEFView$FitMode;

    const-string v7, "FIT_WIDTH_BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/bef/effectsdk/view/BEFView$FitMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bef/effectsdk/view/BEFView$FitMode;->FIT_WIDTH_BOTTOM:Lcom/bef/effectsdk/view/BEFView$FitMode;

    new-instance v7, Lcom/bef/effectsdk/view/BEFView$FitMode;

    const-string v9, "NO_CLIP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/bef/effectsdk/view/BEFView$FitMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/bef/effectsdk/view/BEFView$FitMode;->NO_CLIP:Lcom/bef/effectsdk/view/BEFView$FitMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/bef/effectsdk/view/BEFView$FitMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 244
    sput-object v9, Lcom/bef/effectsdk/view/BEFView$FitMode;->$VALUES:[Lcom/bef/effectsdk/view/BEFView$FitMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bef/effectsdk/view/BEFView$FitMode;
    .locals 1

    .line 244
    const-class v0, Lcom/bef/effectsdk/view/BEFView$FitMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bef/effectsdk/view/BEFView$FitMode;

    return-object p0
.end method

.method public static values()[Lcom/bef/effectsdk/view/BEFView$FitMode;
    .locals 1

    .line 244
    sget-object v0, Lcom/bef/effectsdk/view/BEFView$FitMode;->$VALUES:[Lcom/bef/effectsdk/view/BEFView$FitMode;

    invoke-virtual {v0}, [Lcom/bef/effectsdk/view/BEFView$FitMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bef/effectsdk/view/BEFView$FitMode;

    return-object v0
.end method
