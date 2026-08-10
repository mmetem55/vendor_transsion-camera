.class public final enum Lcom/bef/effectsdk/text/data/BitmapType;
.super Ljava/lang/Enum;
.source "BitmapType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bef/effectsdk/text/data/BitmapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bef/effectsdk/text/data/BitmapType;

.field public static final enum TEXT_BITMAP_NEON_ALPHA:Lcom/bef/effectsdk/text/data/BitmapType;

.field public static final enum TEXT_BITMAP_NONE:Lcom/bef/effectsdk/text/data/BitmapType;

.field public static final enum TEXT_BITMAP_SHAKE_ALPHA:Lcom/bef/effectsdk/text/data/BitmapType;

.field public static final enum TEXT_BITMAP_SINGLE_CHAR_ALPHA:Lcom/bef/effectsdk/text/data/BitmapType;

.field public static final enum TEXT_BITMAP_TYPE_ALPHA:Lcom/bef/effectsdk/text/data/BitmapType;

.field public static final enum TEXT_BITMAP_TYPE_RGBA8888:Lcom/bef/effectsdk/text/data/BitmapType;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 7
    new-instance v0, Lcom/bef/effectsdk/text/data/BitmapType;

    const-string v1, "TEXT_BITMAP_NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bef/effectsdk/text/data/BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bef/effectsdk/text/data/BitmapType;->TEXT_BITMAP_NONE:Lcom/bef/effectsdk/text/data/BitmapType;

    .line 8
    new-instance v1, Lcom/bef/effectsdk/text/data/BitmapType;

    const-string v3, "TEXT_BITMAP_TYPE_ALPHA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/bef/effectsdk/text/data/BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bef/effectsdk/text/data/BitmapType;->TEXT_BITMAP_TYPE_ALPHA:Lcom/bef/effectsdk/text/data/BitmapType;

    .line 9
    new-instance v3, Lcom/bef/effectsdk/text/data/BitmapType;

    const-string v5, "TEXT_BITMAP_TYPE_RGBA8888"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/bef/effectsdk/text/data/BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bef/effectsdk/text/data/BitmapType;->TEXT_BITMAP_TYPE_RGBA8888:Lcom/bef/effectsdk/text/data/BitmapType;

    .line 10
    new-instance v5, Lcom/bef/effectsdk/text/data/BitmapType;

    const-string v7, "TEXT_BITMAP_NEON_ALPHA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/bef/effectsdk/text/data/BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bef/effectsdk/text/data/BitmapType;->TEXT_BITMAP_NEON_ALPHA:Lcom/bef/effectsdk/text/data/BitmapType;

    .line 11
    new-instance v7, Lcom/bef/effectsdk/text/data/BitmapType;

    const-string v9, "TEXT_BITMAP_SINGLE_CHAR_ALPHA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/bef/effectsdk/text/data/BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bef/effectsdk/text/data/BitmapType;->TEXT_BITMAP_SINGLE_CHAR_ALPHA:Lcom/bef/effectsdk/text/data/BitmapType;

    .line 12
    new-instance v9, Lcom/bef/effectsdk/text/data/BitmapType;

    const-string v11, "TEXT_BITMAP_SHAKE_ALPHA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/bef/effectsdk/text/data/BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bef/effectsdk/text/data/BitmapType;->TEXT_BITMAP_SHAKE_ALPHA:Lcom/bef/effectsdk/text/data/BitmapType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/bef/effectsdk/text/data/BitmapType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 5
    sput-object v11, Lcom/bef/effectsdk/text/data/BitmapType;->$VALUES:[Lcom/bef/effectsdk/text/data/BitmapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/bef/effectsdk/text/data/BitmapType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/bef/effectsdk/text/data/BitmapType;
    .locals 5

    .line 21
    invoke-static {}, Lcom/bef/effectsdk/text/data/BitmapType;->values()[Lcom/bef/effectsdk/text/data/BitmapType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 22
    iget v4, v3, Lcom/bef/effectsdk/text/data/BitmapType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_1
    sget-object p0, Lcom/bef/effectsdk/text/data/BitmapType;->TEXT_BITMAP_NONE:Lcom/bef/effectsdk/text/data/BitmapType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bef/effectsdk/text/data/BitmapType;
    .locals 1

    .line 5
    const-class v0, Lcom/bef/effectsdk/text/data/BitmapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bef/effectsdk/text/data/BitmapType;

    return-object p0
.end method

.method public static values()[Lcom/bef/effectsdk/text/data/BitmapType;
    .locals 1

    .line 5
    sget-object v0, Lcom/bef/effectsdk/text/data/BitmapType;->$VALUES:[Lcom/bef/effectsdk/text/data/BitmapType;

    invoke-virtual {v0}, [Lcom/bef/effectsdk/text/data/BitmapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bef/effectsdk/text/data/BitmapType;

    return-object v0
.end method
