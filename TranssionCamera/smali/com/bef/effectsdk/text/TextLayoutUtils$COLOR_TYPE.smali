.class final enum Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;
.super Ljava/lang/Enum;
.source "TextLayoutUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/effectsdk/text/TextLayoutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "COLOR_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

.field public static final enum COLOR_TYPE_ALPHA:Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

.field public static final enum COLOR_TYPE_RGBA:Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    new-instance v0, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    const-string v1, "COLOR_TYPE_RGBA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_RGBA:Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    .line 40
    new-instance v1, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    const-string v3, "COLOR_TYPE_ALPHA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_ALPHA:Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 38
    sput-object v3, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;->$VALUES:[Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;
    .locals 1

    .line 38
    const-class v0, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;
    .locals 1

    .line 38
    sget-object v0, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;->$VALUES:[Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    invoke-virtual {v0}, [Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    return-object v0
.end method
