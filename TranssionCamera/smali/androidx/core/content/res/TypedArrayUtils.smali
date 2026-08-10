.class public Landroidx/core/content/res/TypedArrayUtils;
.super Ljava/lang/Object;
.source "TypedArrayUtils.java"


# direct methods
.method public static getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 0

    .line 104
    invoke-static {p1, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return p4

    .line 108
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 0

    .line 203
    invoke-static {p1, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return p4

    .line 207
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method public static getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 221
    invoke-static {p1, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_0
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 58
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
