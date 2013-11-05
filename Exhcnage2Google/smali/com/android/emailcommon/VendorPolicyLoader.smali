.class public Lcom/android/emailcommon/VendorPolicyLoader;
.super Ljava/lang/Object;
.source "VendorPolicyLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/VendorPolicyLoader$Provider;
    }
.end annotation


# static fields
.field private static final ARGS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/emailcommon/VendorPolicyLoader;


# instance fields
.field private final mPolicyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Class;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-class v2, Ljava/lang/String;

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    const-class v2, Landroid/os/Bundle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/VendorPolicyLoader;->ARGS:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "context"
    .parameter "apkPackageName"
    .parameter "className"
    .parameter "allowNonSystemApk"

    .prologue
    const/4 v8, 0x0

    .line 103
    #v8=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    #p0=(Reference);
    if-nez p4, :cond_0

    invoke-static {p1, p2}, Lcom/android/emailcommon/VendorPolicyLoader;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 105
    const/4 v5, 0x0

    #v5=(Null);
    iput-object v5, p0, Lcom/android/emailcommon/VendorPolicyLoader;->mPolicyMethod:Ljava/lang/reflect/Method;

    .line 127
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Reference);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 109
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Conflicted);v6=(Uninit);v7=(Uninit);
    const/4 v1, 0x0

    .line 110
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    #v1=(Null);
    const/4 v3, 0x0

    .line 112
    .local v3, method:Ljava/lang/reflect/Method;
    #v3=(Null);
    const/4 v5, 0x3

    :try_start_0
    #v5=(PosByte);
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 114
    .local v4, policyContext:Landroid/content/Context;
    #v4=(Reference);
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 115
    .local v0, classLoader:Ljava/lang/ClassLoader;
    #v0=(Reference);
    invoke-virtual {v0, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 116
    #v1=(Reference);
    const-string v5, "getPolicy"

    #v5=(Reference);
    sget-object v6, Lcom/android/emailcommon/VendorPolicyLoader;->ARGS:[Ljava/lang/Class;

    #v6=(Reference);
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 126
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v4           #policyContext:Landroid/content/Context;
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Reference);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iput-object v3, p0, Lcom/android/emailcommon/VendorPolicyLoader;->mPolicyMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 119
    :catch_0
    #v2=(Uninit);v3=(Null);v5=(Conflicted);v7=(Uninit);
    move-exception v2

    .line 121
    .local v2, e:Ljava/lang/ClassNotFoundException;
    #v2=(Reference);
    sget-object v5, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "VendorPolicyLoader: "

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 122
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    #v2=(Uninit);v5=(Conflicted);v6=(Conflicted);v7=(Uninit);
    move-exception v2

    .line 124
    .local v2, e:Ljava/lang/NoSuchMethodException;
    #v2=(Reference);
    sget-object v5, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v5=(Reference);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "VendorPolicyLoader: "

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 117
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    #v2=(Uninit);v5=(Conflicted);v6=(Conflicted);v7=(Uninit);
    move-exception v5

    #v5=(Reference);
    goto :goto_1
.end method

.method public static clearInstanceForTest()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/emailcommon/VendorPolicyLoader;->sInstance:Lcom/android/emailcommon/VendorPolicyLoader;

    .line 92
    return-void
.end method

.method public static injectPolicyForTest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .parameter "context"
    .parameter "apkPackageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 78
    #v4=(Null);
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, name:Ljava/lang/String;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Using policy: package=%s name=%s"

    #v2=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    new-instance v1, Lcom/android/emailcommon/VendorPolicyLoader;

    #v1=(UninitRef);
    invoke-direct {v1, p0, p1, v0, v5}, Lcom/android/emailcommon/VendorPolicyLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    #v1=(Reference);
    sput-object v1, Lcom/android/emailcommon/VendorPolicyLoader;->sInstance:Lcom/android/emailcommon/VendorPolicyLoader;

    .line 82
    return-void
.end method

.method static isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 132
    :try_start_0
    #v2=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 133
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    #v0=(Reference);
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #v3=(Integer);
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 135
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v2

    .line 134
    :catch_0
    #v1=(Uninit);v2=(Null);
    move-exception v1

    .line 135
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    #v1=(Reference);
    goto :goto_0
.end method