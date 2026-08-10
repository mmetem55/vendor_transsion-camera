.class public final enum Lcom/transsion/voicecamera/sdk/utils/LangEnum;
.super Ljava/lang/Enum;
.source "LangEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/voicecamera/sdk/utils/LangEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/voicecamera/sdk/utils/LangEnum;

.field public static final enum LANG_ARABIC:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

.field public static final enum LANG_ENGLISH:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

.field public static final enum LANG_FRENCH:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

.field public static final enum LANG_HAUSA:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

.field public static final enum LANG_INDIA:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

.field public static final enum LANG_NONE:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

.field public static final enum LANG_PIDGIN:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

.field public static final enum LANG_SWAHILI:Lcom/transsion/voicecamera/sdk/utils/LangEnum;


# direct methods
.method private static synthetic $values()[Lcom/transsion/voicecamera/sdk/utils/LangEnum;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    .line 3
    sget-object v1, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_NONE:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_ENGLISH:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_HAUSA:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_PIDGIN:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_FRENCH:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_INDIA:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_ARABIC:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_SWAHILI:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const-string v1, "LANG_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LangEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_NONE:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    .line 5
    new-instance v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const-string v1, "LANG_ENGLISH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LangEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_ENGLISH:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    .line 6
    new-instance v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const-string v1, "LANG_HAUSA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LangEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_HAUSA:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    .line 7
    new-instance v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const-string v1, "LANG_PIDGIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LangEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_PIDGIN:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    .line 8
    new-instance v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const-string v1, "LANG_FRENCH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LangEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_FRENCH:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    .line 9
    new-instance v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const-string v1, "LANG_INDIA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LangEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_INDIA:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    .line 10
    new-instance v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const-string v1, "LANG_ARABIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LangEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_ARABIC:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    .line 11
    new-instance v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const-string v1, "LANG_SWAHILI"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LangEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_SWAHILI:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    .line 3
    invoke-static {}, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->$values()[Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    move-result-object v0

    sput-object v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->$VALUES:[Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/voicecamera/sdk/utils/LangEnum;
    .locals 1

    .line 3
    const-class v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    return-object p0
.end method

.method public static values()[Lcom/transsion/voicecamera/sdk/utils/LangEnum;
    .locals 1

    .line 3
    sget-object v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->$VALUES:[Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    invoke-virtual {v0}, [Lcom/transsion/voicecamera/sdk/utils/LangEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    return-object v0
.end method
