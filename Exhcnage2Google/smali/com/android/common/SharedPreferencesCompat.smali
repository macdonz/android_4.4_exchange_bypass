.class public Lcom/android/common/SharedPreferencesCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# static fields
.field private static sApplyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 33
    #v0=(Reference);
    const-string v1, "apply"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Class;

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/common/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/common/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method
