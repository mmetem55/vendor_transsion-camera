.class synthetic Lcom/bef/effectsdk/text/TextLayoutUtils$1;
.super Ljava/lang/Object;
.source "TextLayoutUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/effectsdk/text/TextLayoutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$bef$effectsdk$text$TextLayoutUtils$COLOR_TYPE:[I

.field static final synthetic $SwitchMap$com$bef$effectsdk$text$data$BitmapType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 460
    invoke-static {}, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;->values()[Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bef/effectsdk/text/TextLayoutUtils$1;->$SwitchMap$com$bef$effectsdk$text$TextLayoutUtils$COLOR_TYPE:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_ALPHA:Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/bef/effectsdk/text/TextLayoutUtils$1;->$SwitchMap$com$bef$effectsdk$text$TextLayoutUtils$COLOR_TYPE:[I

    sget-object v3, Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_RGBA:Lcom/bef/effectsdk/text/TextLayoutUtils$COLOR_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    :catch_1
    invoke-static {}, Lcom/bef/effectsdk/text/data/BitmapType;->values()[Lcom/bef/effectsdk/text/data/BitmapType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/bef/effectsdk/text/TextLayoutUtils$1;->$SwitchMap$com$bef$effectsdk$text$data$BitmapType:[I

    :try_start_2
    sget-object v3, Lcom/bef/effectsdk/text/data/BitmapType;->TEXT_BITMAP_SHAKE_ALPHA:Lcom/bef/effectsdk/text/data/BitmapType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/bef/effectsdk/text/TextLayoutUtils$1;->$SwitchMap$com$bef$effectsdk$text$data$BitmapType:[I

    sget-object v2, Lcom/bef/effectsdk/text/data/BitmapType;->TEXT_BITMAP_NEON_ALPHA:Lcom/bef/effectsdk/text/data/BitmapType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
