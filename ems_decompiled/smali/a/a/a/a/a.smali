.class public La/a/a/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/reflect/Field;

.field public static b:Z

.field public static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static d:Z

.field public static e:Ljava/lang/reflect/Field;

.field public static f:Z

.field public static g:Ljava/lang/reflect/Field;

.field public static h:Z

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Z

.field public static k:Ljava/lang/reflect/Method;

.field public static l:Z

.field public static m:Ljava/lang/reflect/Field;

.field public static n:Z

.field public static o:Ljava/lang/reflect/Field;

.field public static p:Z

.field public static q:Ljava/lang/reflect/Method;

.field public static r:Z

.field public static s:Ljava/lang/reflect/Field;

.field public static t:Z

.field public static u:J

.field public static v:Ljava/lang/reflect/Method;


# direct methods
.method public static A(Ljava/lang/Object;)V
    .locals 4

    sget-boolean v0, La/a/a/a/a;->d:Z

    const/4 v1, 0x1

    const-string v2, "ResourcesFlusher"

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.content.res.ThemedResourceCache"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, La/a/a/a/a;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Could not find ThemedResourceCache class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v1, La/a/a/a/a;->d:Z

    :cond_0
    sget-object v0, La/a/a/a/a;->c:Ljava/lang/Class;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v3, La/a/a/a/a;->f:Z

    if-nez v3, :cond_2

    :try_start_1
    const-string v3, "mUnthemedEntries"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, La/a/a/a/a;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    sput-boolean v1, La/a/a/a/a;->f:Z

    :cond_2
    sget-object v0, La/a/a/a/a;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p0

    goto :goto_2

    :catch_2
    move-exception p0

    const-string v0, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_4
    return-void
.end method

.method public static B(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 6

    sget-boolean v0, La/a/a/a/a;->n:Z

    const-string v1, "; inflation may have unexpected results."

    const-string v2, "LayoutInflaterCompatHC"

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    const-class v3, Landroid/view/LayoutInflater;

    const-string v4, "mFactory2"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, La/a/a/a/a;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-static {v4}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/view/LayoutInflater;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v0, La/a/a/a/a;->n:Z

    :cond_0
    sget-object v0, La/a/a/a/a;->m:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public static C(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    sget-boolean v0, La/a/a/a/a;->p:Z

    const-string v1, "CompoundButtonCompat"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    const-class v2, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, La/a/a/a/a;->o:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v0, La/a/a/a/a;->p:Z

    :cond_1
    sget-object v0, La/a/a/a/a;->o:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string v0, "Failed to get button drawable via reflection"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v2, La/a/a/a/a;->o:Ljava/lang/reflect/Field;

    :cond_2
    return-object v2
.end method

.method public static D(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lb/i/n/f;

    invoke-interface {p0}, Lb/i/n/f;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static E(Landroid/graphics/drawable/Drawable;)I
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p0

    return p0

    :cond_0
    sget-boolean v0, La/a/a/a/a;->l:Z

    const-string v1, "DrawableCompat"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string v4, "getLayoutDirection"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, La/a/a/a/a;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v0, La/a/a/a/a;->l:Z

    :cond_1
    sget-object v0, La/a/a/a/a;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_1
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    const-string v0, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    sput-object p0, La/a/a/a/a;->k:Ljava/lang/reflect/Method;

    :cond_2
    return v2
.end method

.method public static F()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, ".("

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static G()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, ".("

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static H(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "UNKNOWN"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "?"

    invoke-static {p0, p1}, Lc/a/a/a/a;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static I(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method public static J(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, La/a/a/a/a;->L(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 2
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_1
    invoke-static {p0, v2}, La/a/a/a/a;->L(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in manifest"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static K(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    invoke-static {p0, p1}, La/a/a/a/a;->L(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, La/a/a/a/a;->L(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static L(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/16 v3, 0x280

    const/16 v4, 0x1d

    if-lt v1, v4, :cond_0

    const v3, 0x100c0280

    goto :goto_0

    :cond_0
    if-lt v1, v2, :cond_1

    const v3, 0xc0280

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    const-string v1, "android.support.PARENT_ACTIVITY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method public static M(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, "UNDEFINED"

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static N(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ".font"

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-static {v1, v2}, Lc/a/a/a/a;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return-object v3

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static O(Landroid/widget/TextView;)Lb/i/k/b$a;
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/i/k/b$a;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/i/k/b$a;-><init>(Landroid/text/PrecomputedText$Params;)V

    return-object v0

    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/16 v4, 0x17

    const/4 v5, 0x1

    if-lt v0, v4, :cond_1

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1
    :goto_0
    sget-object v8, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-lt v0, v4, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v7

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v4, :cond_4

    :cond_3
    :pswitch_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :cond_4
    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result p0

    if-eq p0, v5, :cond_7

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v5, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    if-eqz v3, :cond_8

    :pswitch_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :pswitch_2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :cond_7
    :goto_1
    :pswitch_3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :pswitch_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :cond_8
    :pswitch_5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 4
    :goto_2
    new-instance v0, Lb/i/k/b$a;

    invoke-direct {v0, v2, p0, v6, v7}, Lb/i/k/b$a;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public static P(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_9

    const/16 v0, 0x21

    if-eq p2, v0, :cond_6

    const/16 v0, 0x42

    if-eq p2, v0, :cond_3

    const/16 v0, 0x82

    if-ne p2, v0, :cond_2

    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_0

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_1

    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p2, v0, :cond_4

    iget p2, p0, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_5

    :cond_4
    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-ge p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_6
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_7

    iget p2, p0, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_8

    :cond_7
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le p0, p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_9
    iget p2, p0, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_a

    iget p2, p0, Landroid/graphics/Rect;->left:I

    if-lt p2, v0, :cond_b

    :cond_a
    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-le p0, p1, :cond_b

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public static Q()Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    sget-object v0, La/a/a/a/a;->v:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, La/a/a/a/a;->v:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-class v1, Landroid/os/Trace;

    const-string v4, "TRACE_TAG_APP"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    sput-wide v4, La/a/a/a/a;->u:J

    const-class v1, Landroid/os/Trace;

    const-string v4, "isTagEnabled"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, La/a/a/a/a;->v:Ljava/lang/reflect/Method;

    :cond_1
    sget-object v1, La/a/a/a/a;->v:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    sget-wide v4, La/a/a/a/a;->u:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2
    instance-of v2, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const-string v2, "Trace"

    const-string v3, "Unable to call isTagEnabled via reflection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public static R(Landroid/view/ViewGroup;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result p0

    return p0

    :cond_0
    sget v0, Lb/i/c;->tag_transition_group:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lb/i/m/r;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static S(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Lb/m/d/q;
    .locals 5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result p3

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result p3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result p3

    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    sget v4, Lb/m/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_3
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v3

    :cond_4
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance p0, Lb/m/d/q;

    invoke-direct {p0, v2}, Lb/m/d/q;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    :cond_5
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p0, Lb/m/d/q;

    invoke-direct {p0, p1}, Lb/m/d/q;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_6
    if-nez p3, :cond_d

    if-eqz v0, :cond_d

    const/16 p1, 0x1001

    if-eq v0, p1, :cond_b

    const/16 p1, 0x1003

    if-eq v0, p1, :cond_9

    const/16 p1, 0x2002

    if-eq v0, p1, :cond_7

    const/4 p3, -0x1

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    .line 3
    sget p1, Lb/m/a;->fragment_close_enter:I

    goto :goto_1

    :cond_8
    sget p1, Lb/m/a;->fragment_close_exit:I

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_a

    sget p1, Lb/m/a;->fragment_fade_enter:I

    goto :goto_1

    :cond_a
    sget p1, Lb/m/a;->fragment_fade_exit:I

    goto :goto_1

    :cond_b
    if-eqz p2, :cond_c

    sget p1, Lb/m/a;->fragment_open_enter:I

    goto :goto_1

    :cond_c
    sget p1, Lb/m/a;->fragment_open_exit:I

    :goto_1
    move p3, p1

    :cond_d
    :goto_2
    if-eqz p3, :cond_11

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    :try_start_0
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_e

    new-instance v0, Lb/m/d/q;

    invoke-direct {v0, p2}, Lb/m/d/q;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_e
    const/4 v1, 0x1

    goto :goto_3

    :catch_0
    nop

    goto :goto_3

    :catch_1
    move-exception p0

    throw p0

    :cond_f
    :goto_3
    if-nez v1, :cond_11

    :try_start_1
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_11

    new-instance v0, Lb/m/d/q;

    invoke-direct {v0, p2}, Lb/m/d/q;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception p2

    if-nez p1, :cond_10

    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_11

    new-instance p1, Lb/m/d/q;

    invoke-direct {p1, p0}, Lb/m/d/q;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    :cond_10
    throw p2

    :cond_11
    return-object v3
.end method

.method public static T(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    .line 1
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static U(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    goto :goto_1

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    :goto_1
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static V(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "r"

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-object v0
.end method

.method public static W(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    if-eqz p0, :cond_1

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lb/b/q/q0;

    if-eqz v0, :cond_0

    check-cast p2, Lb/b/q/q0;

    invoke-interface {p2}, Lb/b/q/q0;->a()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static X(Landroid/widget/EdgeEffect;FF)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_0
    return-void
.end method

.method public static Y(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lb/i/f/c/b;
    .locals 18

    move-object/from16 v0, p1

    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_f

    const/4 v1, 0x0

    const-string v4, "font-family"

    move-object/from16 v5, p0

    .line 1
    invoke-interface {v5, v2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    sget-object v6, Lb/i/d;->FontFamily:[I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v6, Lb/i/d;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lb/i/d;->FontFamily_fontProviderPackage:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lb/i/d;->FontFamily_fontProviderQuery:I

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lb/i/d;->FontFamily_fontProviderCerts:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    sget v11, Lb/i/d;->FontFamily_fontProviderFetchStrategy:I

    invoke-virtual {v4, v11, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    sget v12, Lb/i/d;->FontFamily_fontProviderFetchTimeout:I

    const/16 v13, 0x1f4

    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    sget v13, Lb/i/d;->FontFamily_fontProviderSystemFontFamily:I

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x3

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v4, :cond_1

    invoke-static/range {p0 .. p0}, La/a/a/a/a;->q0(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_1
    invoke-static {v0, v9}, La/a/a/a/a;->Z(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lb/i/f/c/e;

    new-instance v2, Lb/i/j/e;

    invoke-direct {v2, v6, v7, v8, v0}, Lb/i/j/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v1, v2, v11, v12, v13}, Lb/i/f/c/e;-><init>(Lb/i/j/e;IILjava/lang/String;)V

    goto/16 :goto_a

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v4, :cond_c

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "font"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    sget-object v8, Lb/i/d;->FontFamilyFont:[I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    sget v8, Lb/i/d;->FontFamilyFont_fontWeight:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    sget v8, Lb/i/d;->FontFamilyFont_android_fontWeight:I

    :goto_3
    const/16 v9, 0x190

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    sget v8, Lb/i/d;->FontFamilyFont_fontStyle:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    sget v8, Lb/i/d;->FontFamilyFont_android_fontStyle:I

    :goto_4
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-ne v3, v8, :cond_6

    const/4 v14, 0x1

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    :goto_5
    sget v8, Lb/i/d;->FontFamilyFont_ttcIndex:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_6

    :cond_7
    sget v8, Lb/i/d;->FontFamilyFont_android_ttcIndex:I

    :goto_6
    sget v9, Lb/i/d;->FontFamilyFont_fontVariationSettings:I

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_7

    :cond_8
    sget v9, Lb/i/d;->FontFamilyFont_android_fontVariationSettings:I

    :goto_7
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    sget v8, Lb/i/d;->FontFamilyFont_font:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_8

    :cond_9
    sget v8, Lb/i/d;->FontFamilyFont_android_font:I

    :goto_8
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :goto_9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v4, :cond_a

    invoke-static/range {p0 .. p0}, La/a/a/a/a;->q0(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    :cond_a
    new-instance v7, Lb/i/f/c/d;

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Lb/i/f/c/d;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    .line 4
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    invoke-static/range {p0 .. p0}, La/a/a/a/a;->q0(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    new-instance v1, Lb/i/f/c/c;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lb/i/f/c/d;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/i/f/c/d;

    invoke-direct {v1, v0}, Lb/i/f/c/c;-><init>([Lb/i/f/c/d;)V

    goto :goto_a

    .line 5
    :cond_e
    invoke-static/range {p0 .. p0}, La/a/a/a/a;->q0(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_a
    return-object v1

    .line 6
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method public static Z(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v2, v2, Landroid/util/TypedValue;->type:I

    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 p1, 0x0

    .line 2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_5

    invoke-virtual {v0, p1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/a/a/a/a;->r0([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La/a/a/a/a;->r0([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static a(Lb/g/a/i/e;Lb/g/a/d;Ljava/util/ArrayList;I)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/g/a/i/e;",
            "Lb/g/a/d;",
            "Ljava/util/ArrayList<",
            "Lb/g/a/i/d;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    sget-object v12, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    const/4 v13, 0x2

    if-nez p3, :cond_0

    iget v1, v0, Lb/g/a/i/e;->V0:I

    iget-object v2, v0, Lb/g/a/i/e;->Y0:[Lb/g/a/i/b;

    move v15, v1

    move-object/from16 v16, v2

    const/16 v17, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Lb/g/a/i/e;->W0:I

    iget-object v2, v0, Lb/g/a/i/e;->X0:[Lb/g/a/i/b;

    move v15, v1

    move-object/from16 v16, v2

    const/16 v17, 0x2

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v15, :cond_72

    aget-object v1, v16, v9

    .line 1
    iget-boolean v2, v1, Lb/g/a/i/b;->t:Z

    const/16 v18, 0x0

    const/16 v8, 0x8

    const/4 v4, 0x1

    if-nez v2, :cond_19

    .line 2
    iget v2, v1, Lb/g/a/i/b;->o:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v5, v1, Lb/g/a/i/b;->a:Lb/g/a/i/d;

    move-object v6, v5

    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_14

    iget v14, v1, Lb/g/a/i/b;->i:I

    add-int/2addr v14, v4

    iput v14, v1, Lb/g/a/i/b;->i:I

    iget-object v14, v5, Lb/g/a/i/d;->H0:[Lb/g/a/i/d;

    iget v3, v1, Lb/g/a/i/b;->o:I

    aput-object v18, v14, v3

    iget-object v14, v5, Lb/g/a/i/d;->G0:[Lb/g/a/i/d;

    aput-object v18, v14, v3

    .line 3
    iget v14, v5, Lb/g/a/i/d;->o0:I

    if-eq v14, v8, :cond_f

    .line 4
    iget v14, v1, Lb/g/a/i/b;->l:I

    add-int/2addr v14, v4

    iput v14, v1, Lb/g/a/i/b;->l:I

    invoke-virtual {v5, v3}, Lb/g/a/i/d;->p(I)Lb/g/a/i/d$a;

    move-result-object v3

    if-eq v3, v12, :cond_3

    iget v3, v1, Lb/g/a/i/b;->m:I

    iget v14, v1, Lb/g/a/i/b;->o:I

    if-nez v14, :cond_1

    .line 5
    invoke-virtual {v5}, Lb/g/a/i/d;->w()I

    move-result v14

    goto :goto_3

    :cond_1
    if-ne v14, v4, :cond_2

    invoke-virtual {v5}, Lb/g/a/i/d;->q()I

    move-result v14

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    add-int/2addr v3, v14

    .line 6
    iput v3, v1, Lb/g/a/i/b;->m:I

    :cond_3
    iget v3, v1, Lb/g/a/i/b;->m:I

    iget-object v14, v5, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v14, v14, v2

    invoke-virtual {v14}, Lb/g/a/i/c;->e()I

    move-result v14

    add-int/2addr v14, v3

    iput v14, v1, Lb/g/a/i/b;->m:I

    iget-object v3, v5, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v21, v2, 0x1

    aget-object v3, v3, v21

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v3

    add-int/2addr v3, v14

    iput v3, v1, Lb/g/a/i/b;->m:I

    iget v3, v1, Lb/g/a/i/b;->n:I

    iget-object v14, v5, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v14, v14, v2

    invoke-virtual {v14}, Lb/g/a/i/c;->e()I

    move-result v14

    add-int/2addr v14, v3

    iput v14, v1, Lb/g/a/i/b;->n:I

    iget-object v3, v5, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v3, v3, v21

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v3

    add-int/2addr v3, v14

    iput v3, v1, Lb/g/a/i/b;->n:I

    iget-object v3, v1, Lb/g/a/i/b;->b:Lb/g/a/i/d;

    if-nez v3, :cond_4

    iput-object v5, v1, Lb/g/a/i/b;->b:Lb/g/a/i/d;

    :cond_4
    iput-object v5, v1, Lb/g/a/i/b;->d:Lb/g/a/i/d;

    iget-object v3, v5, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    iget v14, v1, Lb/g/a/i/b;->o:I

    aget-object v8, v3, v14

    if-ne v8, v12, :cond_f

    iget-object v8, v5, Lb/g/a/i/d;->s:[I

    aget v22, v8, v14

    const/4 v4, 0x3

    if-eqz v22, :cond_6

    aget v13, v8, v14

    if-eq v13, v4, :cond_6

    aget v13, v8, v14

    const/4 v4, 0x2

    if-ne v13, v4, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v25, v7

    goto :goto_8

    :cond_6
    :goto_4
    iget v4, v1, Lb/g/a/i/b;->j:I

    const/4 v13, 0x1

    add-int/2addr v4, v13

    iput v4, v1, Lb/g/a/i/b;->j:I

    iget-object v4, v5, Lb/g/a/i/d;->F0:[F

    aget v13, v4, v14

    const/16 v20, 0x0

    cmpl-float v25, v13, v20

    if-lez v25, :cond_7

    move/from16 v25, v7

    iget v7, v1, Lb/g/a/i/b;->k:F

    aget v4, v4, v14

    add-float/2addr v7, v4

    iput v7, v1, Lb/g/a/i/b;->k:F

    goto :goto_5

    :cond_7
    move/from16 v25, v7

    .line 7
    :goto_5
    iget v4, v5, Lb/g/a/i/d;->o0:I

    const/16 v7, 0x8

    if-eq v4, v7, :cond_9

    .line 8
    aget-object v3, v3, v14

    if-ne v3, v12, :cond_9

    aget v3, v8, v14

    if-eqz v3, :cond_8

    aget v3, v8, v14

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    :cond_8
    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_c

    const/4 v3, 0x0

    cmpg-float v4, v13, v3

    if-gez v4, :cond_a

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lb/g/a/i/b;->q:Z

    goto :goto_7

    :cond_a
    const/4 v3, 0x1

    iput-boolean v3, v1, Lb/g/a/i/b;->r:Z

    :goto_7
    iget-object v3, v1, Lb/g/a/i/b;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lb/g/a/i/b;->h:Ljava/util/ArrayList;

    :cond_b
    iget-object v3, v1, Lb/g/a/i/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v3, v1, Lb/g/a/i/b;->f:Lb/g/a/i/d;

    if-nez v3, :cond_d

    iput-object v5, v1, Lb/g/a/i/b;->f:Lb/g/a/i/d;

    :cond_d
    iget-object v3, v1, Lb/g/a/i/b;->g:Lb/g/a/i/d;

    if-eqz v3, :cond_e

    iget-object v3, v3, Lb/g/a/i/d;->G0:[Lb/g/a/i/d;

    iget v4, v1, Lb/g/a/i/b;->o:I

    aput-object v5, v3, v4

    :cond_e
    iput-object v5, v1, Lb/g/a/i/b;->g:Lb/g/a/i/d;

    :goto_8
    iget v3, v1, Lb/g/a/i/b;->o:I

    goto :goto_9

    :cond_f
    move/from16 v25, v7

    :goto_9
    if-eq v6, v5, :cond_10

    iget-object v3, v6, Lb/g/a/i/d;->H0:[Lb/g/a/i/d;

    iget v4, v1, Lb/g/a/i/b;->o:I

    aput-object v5, v3, v4

    :cond_10
    iget-object v3, v5, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v3, :cond_11

    iget-object v3, v3, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    iget-object v4, v3, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v6, v4, v2

    iget-object v6, v6, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v6, :cond_11

    aget-object v4, v4, v2

    iget-object v4, v4, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    iget-object v4, v4, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    if-eq v4, v5, :cond_12

    :cond_11
    move-object/from16 v3, v18

    :cond_12
    if-eqz v3, :cond_13

    move/from16 v7, v25

    goto :goto_a

    :cond_13
    move-object v3, v5

    const/4 v7, 0x1

    :goto_a
    move-object v6, v5

    const/4 v4, 0x1

    const/16 v8, 0x8

    const/4 v13, 0x2

    move-object v5, v3

    goto/16 :goto_2

    :cond_14
    iget-object v3, v1, Lb/g/a/i/b;->b:Lb/g/a/i/d;

    if-eqz v3, :cond_15

    iget v4, v1, Lb/g/a/i/b;->m:I

    iget-object v3, v3, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v3

    sub-int/2addr v4, v3

    iput v4, v1, Lb/g/a/i/b;->m:I

    :cond_15
    iget-object v3, v1, Lb/g/a/i/b;->d:Lb/g/a/i/d;

    if-eqz v3, :cond_16

    iget v4, v1, Lb/g/a/i/b;->m:I

    iget-object v3, v3, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lb/g/a/i/c;->e()I

    move-result v2

    sub-int/2addr v4, v2

    iput v4, v1, Lb/g/a/i/b;->m:I

    :cond_16
    iput-object v5, v1, Lb/g/a/i/b;->c:Lb/g/a/i/d;

    iget v2, v1, Lb/g/a/i/b;->o:I

    if-nez v2, :cond_17

    iget-boolean v2, v1, Lb/g/a/i/b;->p:Z

    if-eqz v2, :cond_17

    iput-object v5, v1, Lb/g/a/i/b;->e:Lb/g/a/i/d;

    goto :goto_b

    :cond_17
    iget-object v2, v1, Lb/g/a/i/b;->a:Lb/g/a/i/d;

    iput-object v2, v1, Lb/g/a/i/b;->e:Lb/g/a/i/d;

    :goto_b
    iget-boolean v2, v1, Lb/g/a/i/b;->r:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v1, Lb/g/a/i/b;->q:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_c

    :cond_18
    const/4 v2, 0x0

    :goto_c
    iput-boolean v2, v1, Lb/g/a/i/b;->s:Z

    :cond_19
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Lb/g/a/i/b;->t:Z

    if-eqz v11, :cond_1b

    .line 11
    iget-object v2, v1, Lb/g/a/i/b;->a:Lb/g/a/i/d;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_d

    :cond_1a
    move/from16 v30, v9

    move-object/from16 v19, v12

    move/from16 v31, v15

    const/16 v24, 0x2

    goto/16 :goto_4d

    .line 12
    :cond_1b
    :goto_d
    iget-object v13, v1, Lb/g/a/i/b;->a:Lb/g/a/i/d;

    iget-object v14, v1, Lb/g/a/i/b;->c:Lb/g/a/i/d;

    iget-object v8, v1, Lb/g/a/i/b;->b:Lb/g/a/i/d;

    iget-object v7, v1, Lb/g/a/i/b;->d:Lb/g/a/i/d;

    iget-object v2, v1, Lb/g/a/i/b;->e:Lb/g/a/i/d;

    iget v3, v1, Lb/g/a/i/b;->k:F

    iget-object v4, v0, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v4, v4, p3

    sget-object v5, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    if-ne v4, v5, :cond_1c

    const/4 v4, 0x1

    goto :goto_e

    :cond_1c
    const/4 v4, 0x0

    :goto_e
    if-nez p3, :cond_20

    iget v5, v2, Lb/g/a/i/d;->B0:I

    const/4 v6, 0x1

    if-nez v5, :cond_1d

    const/16 v23, 0x1

    goto :goto_f

    :cond_1d
    const/16 v23, 0x0

    :goto_f
    move/from16 v24, v9

    const/4 v9, 0x2

    if-ne v5, v6, :cond_1e

    const/16 v22, 0x1

    goto :goto_10

    :cond_1e
    const/16 v22, 0x0

    :goto_10
    if-ne v5, v9, :cond_1f

    move/from16 v5, v23

    goto :goto_13

    :cond_1f
    move/from16 v5, v23

    goto :goto_14

    :cond_20
    move/from16 v24, v9

    const/4 v6, 0x1

    const/4 v9, 0x2

    iget v5, v2, Lb/g/a/i/d;->C0:I

    if-nez v5, :cond_21

    const/16 v22, 0x1

    goto :goto_11

    :cond_21
    const/16 v22, 0x0

    :goto_11
    if-ne v5, v6, :cond_22

    const/4 v6, 0x1

    goto :goto_12

    :cond_22
    const/4 v6, 0x0

    :goto_12
    if-ne v5, v9, :cond_23

    move/from16 v5, v22

    move/from16 v22, v6

    :goto_13
    move/from16 v25, v22

    move/from16 v22, v5

    const/4 v5, 0x1

    goto :goto_15

    :cond_23
    move/from16 v5, v22

    move/from16 v22, v6

    :goto_14
    move/from16 v25, v22

    move/from16 v22, v5

    const/4 v5, 0x0

    :goto_15
    move/from16 v27, v3

    move-object v9, v13

    const/4 v6, 0x0

    :goto_16
    if-nez v6, :cond_31

    iget-object v3, v9, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v3, v3, v17

    if-eqz v5, :cond_24

    const/16 v29, 0x1

    goto :goto_17

    :cond_24
    const/16 v29, 0x4

    :goto_17
    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v31

    move/from16 v32, v6

    iget-object v6, v9, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v6, v6, p3

    if-ne v6, v12, :cond_25

    iget-object v6, v9, Lb/g/a/i/d;->s:[I

    aget v6, v6, p3

    if-nez v6, :cond_25

    const/4 v6, 0x1

    goto :goto_18

    :cond_25
    const/4 v6, 0x0

    :goto_18
    iget-object v11, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v11, :cond_26

    if-eq v9, v13, :cond_26

    invoke-virtual {v11}, Lb/g/a/i/c;->e()I

    move-result v11

    add-int v31, v11, v31

    :cond_26
    move/from16 v11, v31

    if-eqz v5, :cond_27

    if-eq v9, v13, :cond_27

    if-eq v9, v8, :cond_27

    move/from16 v31, v15

    const/16 v29, 0x8

    goto :goto_19

    :cond_27
    move/from16 v31, v15

    :goto_19
    iget-object v15, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    move-object/from16 v33, v2

    if-eqz v15, :cond_2b

    if-ne v9, v8, :cond_28

    iget-object v2, v3, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v15, v15, Lb/g/a/i/c;->i:Lb/g/a/g;

    move-object/from16 v34, v13

    const/4 v13, 0x6

    invoke-virtual {v10, v2, v15, v11, v13}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    goto :goto_1a

    :cond_28
    move-object/from16 v34, v13

    iget-object v2, v3, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v13, v15, Lb/g/a/i/c;->i:Lb/g/a/g;

    const/16 v15, 0x8

    invoke-virtual {v10, v2, v13, v11, v15}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :goto_1a
    if-eqz v6, :cond_29

    if-nez v5, :cond_29

    const/16 v29, 0x5

    :cond_29
    if-ne v9, v8, :cond_2a

    if-eqz v5, :cond_2a

    .line 13
    iget-object v2, v9, Lb/g/a/i/d;->U:[Z

    aget-boolean v2, v2, p3

    if-eqz v2, :cond_2a

    const/4 v2, 0x5

    goto :goto_1b

    :cond_2a
    move/from16 v2, v29

    .line 14
    :goto_1b
    iget-object v6, v3, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v3, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {v10, v6, v3, v11, v2}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    goto :goto_1c

    :cond_2b
    move-object/from16 v34, v13

    :goto_1c
    if-eqz v4, :cond_2d

    .line 15
    iget v2, v9, Lb/g/a/i/d;->o0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2c

    .line 16
    iget-object v2, v9, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v2, v2, p3

    if-ne v2, v12, :cond_2c

    iget-object v2, v9, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v3, v2, v3

    iget-object v3, v3, Lb/g/a/i/c;->i:Lb/g/a/g;

    aget-object v2, v2, v17

    iget-object v2, v2, Lb/g/a/i/c;->i:Lb/g/a/g;

    const/4 v6, 0x5

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v2, v11, v6}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    goto :goto_1d

    :cond_2c
    const/4 v11, 0x0

    :goto_1d
    iget-object v2, v9, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v2, v2, v17

    iget-object v2, v2, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v3, v0, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v3, v3, v17

    iget-object v3, v3, Lb/g/a/i/c;->i:Lb/g/a/g;

    const/16 v6, 0x8

    invoke-virtual {v10, v2, v3, v11, v6}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_2d
    iget-object v2, v9, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v2, :cond_2e

    iget-object v2, v2, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    iget-object v3, v2, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v6, v3, v17

    iget-object v6, v6, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v6, :cond_2e

    aget-object v3, v3, v17

    iget-object v3, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    if-eq v3, v9, :cond_2f

    :cond_2e
    move-object/from16 v2, v18

    :cond_2f
    if-eqz v2, :cond_30

    move-object v9, v2

    move/from16 v6, v32

    goto :goto_1e

    :cond_30
    const/4 v6, 0x1

    :goto_1e
    move-object/from16 v11, p2

    move/from16 v15, v31

    move-object/from16 v2, v33

    move-object/from16 v13, v34

    goto/16 :goto_16

    :cond_31
    move-object/from16 v33, v2

    move-object/from16 v34, v13

    move/from16 v31, v15

    if-eqz v7, :cond_35

    iget-object v2, v14, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v2, :cond_35

    iget-object v2, v7, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v2, v2, v3

    iget-object v6, v7, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aget-object v6, v6, p3

    if-ne v6, v12, :cond_32

    iget-object v6, v7, Lb/g/a/i/d;->s:[I

    aget v6, v6, p3

    if-nez v6, :cond_32

    const/4 v13, 0x1

    goto :goto_1f

    :cond_32
    const/4 v13, 0x0

    :goto_1f
    if-eqz v13, :cond_33

    if-nez v5, :cond_33

    iget-object v6, v2, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    iget-object v9, v6, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    if-ne v9, v0, :cond_33

    iget-object v9, v2, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v6, v6, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {v2}, Lb/g/a/i/c;->e()I

    move-result v11

    neg-int v11, v11

    const/4 v13, 0x5

    invoke-virtual {v10, v9, v6, v11, v13}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    goto :goto_20

    :cond_33
    const/4 v13, 0x5

    if-eqz v5, :cond_34

    iget-object v6, v2, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    iget-object v9, v6, Lb/g/a/i/c;->d:Lb/g/a/i/d;

    if-ne v9, v0, :cond_34

    iget-object v9, v2, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v6, v6, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {v2}, Lb/g/a/i/c;->e()I

    move-result v11

    neg-int v11, v11

    const/4 v15, 0x4

    invoke-virtual {v10, v9, v6, v11, v15}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    goto :goto_21

    :cond_34
    :goto_20
    const/4 v15, 0x4

    :goto_21
    iget-object v6, v2, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v9, v14, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v3, v9, v3

    iget-object v3, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    iget-object v3, v3, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {v2}, Lb/g/a/i/c;->e()I

    move-result v2

    neg-int v2, v2

    const/4 v9, 0x6

    invoke-virtual {v10, v6, v3, v2, v9}, Lb/g/a/d;->g(Lb/g/a/g;Lb/g/a/g;II)V

    goto :goto_22

    :cond_35
    const/4 v13, 0x5

    const/4 v15, 0x4

    :goto_22
    if-eqz v4, :cond_36

    iget-object v2, v0, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v4, v14, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v6, v4, v3

    iget-object v6, v6, Lb/g/a/i/c;->i:Lb/g/a/g;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v3

    const/16 v4, 0x8

    invoke-virtual {v10, v2, v6, v3, v4}, Lb/g/a/d;->f(Lb/g/a/g;Lb/g/a/g;II)V

    :cond_36
    iget-object v2, v1, Lb/g/a/i/b;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_40

    iget-boolean v6, v1, Lb/g/a/i/b;->q:Z

    if-eqz v6, :cond_37

    iget-boolean v6, v1, Lb/g/a/i/b;->s:Z

    if-nez v6, :cond_37

    iget v6, v1, Lb/g/a/i/b;->j:I

    int-to-float v6, v6

    goto :goto_23

    :cond_37
    move/from16 v6, v27

    :goto_23
    move-object/from16 v4, v18

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_24
    if-ge v11, v3, :cond_40

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v13, v27

    check-cast v13, Lb/g/a/i/d;

    iget-object v15, v13, Lb/g/a/i/d;->F0:[F

    aget v15, v15, p3

    const/16 v20, 0x0

    cmpg-float v27, v15, v20

    if-gez v27, :cond_39

    iget-boolean v15, v1, Lb/g/a/i/b;->s:Z

    if-eqz v15, :cond_38

    iget-object v0, v13, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v13, v17, 0x1

    aget-object v13, v0, v13

    iget-object v13, v13, Lb/g/a/i/c;->i:Lb/g/a/g;

    aget-object v0, v0, v17

    iget-object v0, v0, Lb/g/a/i/c;->i:Lb/g/a/g;

    move-object/from16 v19, v12

    move-object v15, v13

    const/4 v12, 0x0

    const/4 v13, 0x4

    goto :goto_25

    :cond_38
    const/high16 v15, 0x3f800000    # 1.0f

    :cond_39
    const/16 v20, 0x0

    cmpl-float v27, v15, v20

    if-nez v27, :cond_3a

    iget-object v0, v13, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v13, v17, 0x1

    aget-object v13, v0, v13

    iget-object v13, v13, Lb/g/a/i/c;->i:Lb/g/a/g;

    aget-object v0, v0, v17

    iget-object v0, v0, Lb/g/a/i/c;->i:Lb/g/a/g;

    move-object/from16 v19, v12

    move-object v15, v13

    const/4 v12, 0x0

    const/16 v13, 0x8

    :goto_25
    invoke-virtual {v10, v15, v0, v12, v13}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    move-object/from16 v20, v1

    move-object/from16 v35, v2

    move/from16 v28, v3

    goto/16 :goto_29

    :cond_3a
    move-object/from16 v19, v12

    const/4 v12, 0x0

    if-eqz v4, :cond_3f

    iget-object v4, v4, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v12, v4, v17

    iget-object v12, v12, Lb/g/a/i/c;->i:Lb/g/a/g;

    add-int/lit8 v28, v17, 0x1

    aget-object v4, v4, v28

    iget-object v4, v4, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v0, v13, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    move-object/from16 v35, v2

    aget-object v2, v0, v17

    iget-object v2, v2, Lb/g/a/i/c;->i:Lb/g/a/g;

    aget-object v0, v0, v28

    iget-object v0, v0, Lb/g/a/i/c;->i:Lb/g/a/g;

    move/from16 v28, v3

    invoke-virtual/range {p1 .. p1}, Lb/g/a/d;->m()Lb/g/a/b;

    move-result-object v3

    move-object/from16 v36, v13

    const/4 v13, 0x0

    .line 17
    iput v13, v3, Lb/g/a/b;->b:F

    move-object/from16 v20, v1

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v37, v6, v13

    if-eqz v37, :cond_3e

    cmpl-float v37, v9, v15

    if-nez v37, :cond_3b

    goto :goto_26

    :cond_3b
    cmpl-float v37, v9, v13

    if-nez v37, :cond_3c

    iget-object v0, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v12, v2}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object v0, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v0, v4, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    goto :goto_27

    :cond_3c
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v37, v15, v13

    if-nez v37, :cond_3d

    iget-object v4, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v4, v2, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object v1, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v1, v0, v2}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    goto :goto_27

    :cond_3d
    const/high16 v13, -0x40800000    # -1.0f

    div-float/2addr v9, v6

    div-float v37, v15, v6

    div-float v9, v9, v37

    iget-object v13, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v13, v12, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object v1, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    const/high16 v13, -0x40800000    # -1.0f

    invoke-interface {v1, v4, v13}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object v1, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v1, v0, v9}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object v0, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    neg-float v1, v9

    invoke-interface {v0, v2, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    goto :goto_27

    :cond_3e
    :goto_26
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    iget-object v9, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v9, v12, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object v9, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v9, v4, v13}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object v4, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v4, v0, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object v0, v3, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v0, v2, v13}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    .line 18
    :goto_27
    invoke-virtual {v10, v3}, Lb/g/a/d;->c(Lb/g/a/b;)V

    goto :goto_28

    :cond_3f
    move-object/from16 v20, v1

    move-object/from16 v35, v2

    move/from16 v28, v3

    move-object/from16 v36, v13

    :goto_28
    move v9, v15

    move-object/from16 v4, v36

    :goto_29
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x5

    const/4 v15, 0x4

    move-object/from16 v0, p0

    move-object/from16 v12, v19

    move-object/from16 v1, v20

    move/from16 v3, v28

    move-object/from16 v2, v35

    goto/16 :goto_24

    :cond_40
    move-object/from16 v20, v1

    move-object/from16 v19, v12

    if-eqz v8, :cond_47

    if-eq v8, v7, :cond_41

    if-eqz v5, :cond_47

    :cond_41
    move-object/from16 v0, v34

    iget-object v0, v0, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v0, v0, v17

    iget-object v1, v14, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v2, v17, 0x1

    aget-object v1, v1, v2

    iget-object v0, v0, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lb/g/a/i/c;->i:Lb/g/a/g;

    move-object v3, v0

    goto :goto_2a

    :cond_42
    move-object/from16 v3, v18

    :goto_2a
    iget-object v0, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lb/g/a/i/c;->i:Lb/g/a/g;

    move-object v6, v0

    goto :goto_2b

    :cond_43
    move-object/from16 v6, v18

    :goto_2b
    iget-object v0, v8, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v0, v0, v17

    if-eqz v7, :cond_44

    iget-object v1, v7, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v1, v1, v2

    :cond_44
    if-eqz v3, :cond_46

    if-eqz v6, :cond_46

    move-object/from16 v2, v33

    if-nez p3, :cond_45

    iget v2, v2, Lb/g/a/i/d;->k0:F

    goto :goto_2c

    :cond_45
    iget v2, v2, Lb/g/a/i/d;->l0:F

    :goto_2c
    move v5, v2

    invoke-virtual {v0}, Lb/g/a/i/c;->e()I

    move-result v4

    invoke-virtual {v1}, Lb/g/a/i/c;->e()I

    move-result v9

    iget-object v2, v0, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v0, v1, Lb/g/a/i/c;->i:Lb/g/a/g;

    const/4 v11, 0x7

    move-object/from16 v1, p1

    move-object v12, v7

    move-object v7, v0

    move-object v13, v8

    move v8, v9

    move/from16 v15, v24

    const/16 v24, 0x2

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Lb/g/a/d;->b(Lb/g/a/g;Lb/g/a/g;IFLb/g/a/g;Lb/g/a/g;II)V

    goto/16 :goto_3a

    :cond_46
    move-object v12, v7

    move-object v13, v8

    move/from16 v15, v24

    const/16 v24, 0x2

    goto/16 :goto_3a

    :cond_47
    move-object v12, v7

    move-object v13, v8

    move/from16 v15, v24

    move-object/from16 v0, v34

    const/16 v24, 0x2

    if-eqz v22, :cond_5a

    if-eqz v13, :cond_5a

    move-object/from16 v1, v20

    iget v2, v1, Lb/g/a/i/b;->j:I

    if-lez v2, :cond_48

    iget v1, v1, Lb/g/a/i/b;->i:I

    if-ne v1, v2, :cond_48

    const/16 v23, 0x1

    goto :goto_2d

    :cond_48
    const/16 v23, 0x0

    :goto_2d
    move-object v9, v13

    move-object v11, v9

    :goto_2e
    if-eqz v11, :cond_59

    iget-object v1, v11, Lb/g/a/i/d;->H0:[Lb/g/a/i/d;

    aget-object v1, v1, p3

    move-object v8, v1

    :goto_2f
    if-eqz v8, :cond_49

    .line 19
    iget v1, v8, Lb/g/a/i/d;->o0:I

    const/16 v7, 0x8

    if-ne v1, v7, :cond_4a

    .line 20
    iget-object v1, v8, Lb/g/a/i/d;->H0:[Lb/g/a/i/d;

    aget-object v8, v1, p3

    goto :goto_2f

    :cond_49
    const/16 v7, 0x8

    :cond_4a
    if-nez v8, :cond_4d

    if-ne v11, v12, :cond_4b

    goto :goto_30

    :cond_4b
    move-object/from16 v20, v8

    :cond_4c
    move-object/from16 v26, v9

    move/from16 v30, v15

    const/16 v15, 0x8

    goto/16 :goto_38

    :cond_4d
    :goto_30
    iget-object v1, v11, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v1, v1, v17

    iget-object v2, v1, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v3, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v3, :cond_4e

    iget-object v3, v3, Lb/g/a/i/c;->i:Lb/g/a/g;

    goto :goto_31

    :cond_4e
    move-object/from16 v3, v18

    :goto_31
    if-eq v9, v11, :cond_4f

    iget-object v3, v9, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v4, v17, 0x1

    aget-object v3, v3, v4

    goto :goto_32

    :cond_4f
    if-ne v11, v13, :cond_51

    iget-object v3, v0, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v4, v3, v17

    iget-object v4, v4, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v4, :cond_50

    aget-object v3, v3, v17

    iget-object v3, v3, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    :goto_32
    iget-object v3, v3, Lb/g/a/i/c;->i:Lb/g/a/g;

    goto :goto_33

    :cond_50
    move-object/from16 v3, v18

    :cond_51
    :goto_33
    invoke-virtual {v1}, Lb/g/a/i/c;->e()I

    move-result v1

    iget-object v4, v11, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v5, v17, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lb/g/a/i/c;->e()I

    move-result v4

    if-eqz v8, :cond_52

    iget-object v6, v8, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v6, v6, v17

    goto :goto_34

    :cond_52
    iget-object v6, v14, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v6, v6, v5

    iget-object v6, v6, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v6, :cond_53

    :goto_34
    iget-object v7, v6, Lb/g/a/i/c;->i:Lb/g/a/g;

    move-object/from16 v20, v8

    goto :goto_35

    :cond_53
    move-object/from16 v20, v8

    move-object/from16 v7, v18

    :goto_35
    iget-object v8, v11, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v8, v8, v5

    iget-object v8, v8, Lb/g/a/i/c;->i:Lb/g/a/g;

    if-eqz v6, :cond_54

    invoke-virtual {v6}, Lb/g/a/i/c;->e()I

    move-result v6

    add-int/2addr v4, v6

    :cond_54
    iget-object v6, v9, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lb/g/a/i/c;->e()I

    move-result v6

    add-int/2addr v6, v1

    if-eqz v2, :cond_4c

    if-eqz v3, :cond_4c

    if-eqz v7, :cond_4c

    if-eqz v8, :cond_4c

    if-ne v11, v13, :cond_55

    iget-object v1, v13, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v1, v1, v17

    invoke-virtual {v1}, Lb/g/a/i/c;->e()I

    move-result v1

    move v6, v1

    :cond_55
    if-ne v11, v12, :cond_56

    iget-object v1, v12, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lb/g/a/i/c;->e()I

    move-result v1

    move/from16 v26, v1

    goto :goto_36

    :cond_56
    move/from16 v26, v4

    :goto_36
    if-eqz v23, :cond_57

    const/16 v28, 0x8

    goto :goto_37

    :cond_57
    const/16 v28, 0x5

    :goto_37
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    const/4 v4, 0x5

    move/from16 v30, v15

    const/4 v15, 0x5

    move v4, v6

    move-object v6, v7

    const/16 v21, 0x8

    move-object v7, v8

    const/16 v15, 0x8

    move/from16 v8, v26

    move-object/from16 v26, v9

    move/from16 v9, v28

    invoke-virtual/range {v1 .. v9}, Lb/g/a/d;->b(Lb/g/a/g;Lb/g/a/g;IFLb/g/a/g;Lb/g/a/g;II)V

    .line 21
    :goto_38
    iget v1, v11, Lb/g/a/i/d;->o0:I

    if-eq v1, v15, :cond_58

    move-object v9, v11

    goto :goto_39

    :cond_58
    move-object/from16 v9, v26

    :goto_39
    move-object/from16 v11, v20

    move/from16 v15, v30

    goto/16 :goto_2e

    :cond_59
    :goto_3a
    move/from16 v30, v15

    goto/16 :goto_48

    :cond_5a
    move/from16 v30, v15

    move-object/from16 v1, v20

    const/16 v15, 0x8

    if-eqz v25, :cond_69

    if-eqz v13, :cond_69

    .line 22
    iget v2, v1, Lb/g/a/i/b;->j:I

    if-lez v2, :cond_5b

    iget v1, v1, Lb/g/a/i/b;->i:I

    if-ne v1, v2, :cond_5b

    const/16 v23, 0x1

    goto :goto_3b

    :cond_5b
    const/16 v23, 0x0

    :goto_3b
    move-object v9, v13

    move-object v11, v9

    :goto_3c
    if-eqz v11, :cond_66

    iget-object v1, v11, Lb/g/a/i/d;->H0:[Lb/g/a/i/d;

    aget-object v1, v1, p3

    :goto_3d
    if-eqz v1, :cond_5c

    .line 23
    iget v2, v1, Lb/g/a/i/d;->o0:I

    if-ne v2, v15, :cond_5c

    .line 24
    iget-object v1, v1, Lb/g/a/i/d;->H0:[Lb/g/a/i/d;

    aget-object v1, v1, p3

    goto :goto_3d

    :cond_5c
    if-eq v11, v13, :cond_64

    if-eq v11, v12, :cond_64

    if-eqz v1, :cond_64

    if-ne v1, v12, :cond_5d

    move-object/from16 v8, v18

    goto :goto_3e

    :cond_5d
    move-object v8, v1

    :goto_3e
    iget-object v1, v11, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v1, v1, v17

    iget-object v2, v1, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v3, v9, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v4, v17, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {v1}, Lb/g/a/i/c;->e()I

    move-result v1

    iget-object v5, v11, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lb/g/a/i/c;->e()I

    move-result v5

    if-eqz v8, :cond_5f

    iget-object v6, v8, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v6, v6, v17

    iget-object v7, v6, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v15, v6, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v15, :cond_5e

    goto :goto_40

    :cond_5e
    move-object/from16 v15, v18

    goto :goto_41

    :cond_5f
    iget-object v6, v12, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v6, v6, v17

    if-eqz v6, :cond_60

    iget-object v7, v6, Lb/g/a/i/c;->i:Lb/g/a/g;

    goto :goto_3f

    :cond_60
    move-object/from16 v7, v18

    :goto_3f
    iget-object v15, v11, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v15, v15, v4

    :goto_40
    iget-object v15, v15, Lb/g/a/i/c;->i:Lb/g/a/g;

    :goto_41
    if-eqz v6, :cond_61

    invoke-virtual {v6}, Lb/g/a/i/c;->e()I

    move-result v6

    add-int/2addr v6, v5

    move/from16 v26, v6

    goto :goto_42

    :cond_61
    move/from16 v26, v5

    :goto_42
    iget-object v5, v9, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lb/g/a/i/c;->e()I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v23, :cond_62

    const/16 v28, 0x8

    goto :goto_43

    :cond_62
    const/16 v28, 0x4

    :goto_43
    if-eqz v2, :cond_63

    if-eqz v3, :cond_63

    if-eqz v7, :cond_63

    if-eqz v15, :cond_63

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    const/16 v29, 0x4

    move-object v6, v7

    move-object v7, v15

    move-object v15, v8

    move/from16 v8, v26

    move-object/from16 v26, v9

    move/from16 v9, v28

    invoke-virtual/range {v1 .. v9}, Lb/g/a/d;->b(Lb/g/a/g;Lb/g/a/g;IFLb/g/a/g;Lb/g/a/g;II)V

    goto :goto_44

    :cond_63
    move-object v15, v8

    move-object/from16 v26, v9

    const/16 v29, 0x4

    :goto_44
    move-object v8, v15

    goto :goto_45

    :cond_64
    move-object/from16 v26, v9

    const/16 v29, 0x4

    move-object v8, v1

    .line 25
    :goto_45
    iget v1, v11, Lb/g/a/i/d;->o0:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_65

    move-object v9, v11

    goto :goto_46

    :cond_65
    move-object/from16 v9, v26

    :goto_46
    move-object v11, v8

    const/16 v15, 0x8

    goto/16 :goto_3c

    .line 26
    :cond_66
    iget-object v1, v13, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v1, v1, v17

    iget-object v0, v0, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v0, v0, v17

    iget-object v0, v0, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    iget-object v2, v12, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v11, v2, v3

    iget-object v2, v14, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v2, v2, v3

    iget-object v15, v2, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v0, :cond_68

    if-eq v13, v12, :cond_67

    iget-object v2, v1, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v0, v0, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {v1}, Lb/g/a/i/c;->e()I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {v10, v2, v0, v1, v3}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    goto :goto_47

    :cond_67
    if-eqz v15, :cond_68

    iget-object v2, v1, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v3, v0, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {v1}, Lb/g/a/i/c;->e()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v11, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v7, v15, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {v11}, Lb/g/a/i/c;->e()I

    move-result v8

    const/4 v9, 0x5

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lb/g/a/d;->b(Lb/g/a/g;Lb/g/a/g;IFLb/g/a/g;Lb/g/a/g;II)V

    :cond_68
    :goto_47
    if-eqz v15, :cond_69

    if-eq v13, v12, :cond_69

    iget-object v0, v11, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v1, v15, Lb/g/a/i/c;->i:Lb/g/a/g;

    invoke-virtual {v11}, Lb/g/a/i/c;->e()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x5

    invoke-virtual {v10, v0, v1, v2, v3}, Lb/g/a/d;->d(Lb/g/a/g;Lb/g/a/g;II)Lb/g/a/b;

    :cond_69
    :goto_48
    if-nez v22, :cond_6a

    if-eqz v25, :cond_71

    :cond_6a
    if-eqz v13, :cond_71

    if-eq v13, v12, :cond_71

    iget-object v0, v13, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v1, v0, v17

    if-nez v12, :cond_6b

    move-object v8, v13

    goto :goto_49

    :cond_6b
    move-object v8, v12

    :goto_49
    iget-object v2, v8, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v2, v2, v3

    iget-object v4, v1, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v4, :cond_6c

    iget-object v4, v4, Lb/g/a/i/c;->i:Lb/g/a/g;

    goto :goto_4a

    :cond_6c
    move-object/from16 v4, v18

    :goto_4a
    iget-object v5, v2, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v5, :cond_6d

    iget-object v5, v5, Lb/g/a/i/c;->i:Lb/g/a/g;

    goto :goto_4b

    :cond_6d
    move-object/from16 v5, v18

    :goto_4b
    if-eq v14, v8, :cond_6f

    iget-object v5, v14, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v5, v5, v3

    iget-object v5, v5, Lb/g/a/i/c;->f:Lb/g/a/i/c;

    if-eqz v5, :cond_6e

    iget-object v5, v5, Lb/g/a/i/c;->i:Lb/g/a/g;

    move-object/from16 v18, v5

    :cond_6e
    move-object/from16 v6, v18

    goto :goto_4c

    :cond_6f
    move-object v6, v5

    :goto_4c
    if-ne v13, v8, :cond_70

    aget-object v1, v0, v17

    aget-object v2, v0, v3

    :cond_70
    if-eqz v4, :cond_71

    if-eqz v6, :cond_71

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v1}, Lb/g/a/i/c;->e()I

    move-result v0

    iget-object v7, v8, Lb/g/a/i/d;->S:[Lb/g/a/i/c;

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lb/g/a/i/c;->e()I

    move-result v8

    iget-object v3, v1, Lb/g/a/i/c;->i:Lb/g/a/g;

    iget-object v7, v2, Lb/g/a/i/c;->i:Lb/g/a/g;

    const/4 v9, 0x5

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v0

    invoke-virtual/range {v1 .. v9}, Lb/g/a/d;->b(Lb/g/a/g;Lb/g/a/g;IFLb/g/a/g;Lb/g/a/g;II)V

    :cond_71
    :goto_4d
    add-int/lit8 v9, v30, 0x1

    const/4 v13, 0x2

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move-object/from16 v12, v19

    move/from16 v15, v31

    goto/16 :goto_1

    :cond_72
    return-void
.end method

.method public static a0(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lb/i/n/f;

    if-eqz v0, :cond_1

    check-cast p0, Lb/i/n/f;

    invoke-interface {p0, p1}, Lb/i/n/f;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public static b0(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v1, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p0, v0}, La/a/a/a/a;->B(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, La/a/a/a/a;->B(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9

    invoke-static {p0, p1, p2}, La/a/a/a/a;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    invoke-static {p0, p1, p3}, La/a/a/a/a;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    const/16 v1, 0x82

    const/16 v3, 0x21

    const/16 v4, 0x42

    const/16 v5, 0x11

    const/4 v6, 0x1

    if-eq p0, v5, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v4, :cond_2

    if-ne p0, v1, :cond_1

    .line 1
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p3, Landroid/graphics/Rect;->top:I

    if-gt v7, v8, :cond_5

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p3, Landroid/graphics/Rect;->left:I

    if-gt v7, v8, :cond_5

    goto :goto_0

    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v8, :cond_5

    goto :goto_0

    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_5

    :goto_0
    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_6

    return v6

    :cond_6
    if-eq p0, v5, :cond_d

    if-ne p0, v4, :cond_7

    goto :goto_3

    .line 2
    :cond_7
    invoke-static {p0, p1, p2}, La/a/a/a/a;->T(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p2

    if-eq p0, v5, :cond_b

    if-eq p0, v3, :cond_a

    if-eq p0, v4, :cond_9

    if-ne p0, v1, :cond_8

    .line 3
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_a
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_b
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->left:I

    :goto_2
    sub-int/2addr p0, p1

    .line 4
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-ge p2, p0, :cond_c

    const/4 v2, 0x1

    :cond_c
    return v2

    :cond_d
    :goto_3
    return v6

    :cond_e
    :goto_4
    return v2
.end method

.method public static c0(Landroid/widget/TextView;I)V
    .locals 3

    invoke-static {p1}, La/a/a/a/a;->h(I)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public static d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_3

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_2

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-gt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p0, v0, :cond_4

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p0, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static d0(Landroid/graphics/drawable/Drawable;FF)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static e0(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method public static f(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f0(Landroid/widget/TextView;I)V
    .locals 3

    invoke-static {p1}, La/a/a/a/a;->h(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public static g([Lb/i/g/c;[Lb/i/g/c;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    iget-char v2, v2, Lb/i/g/c;->a:C

    aget-object v3, p1, v1

    iget-char v3, v3, Lb/i/g/c;->a:C

    if-ne v2, v3, :cond_3

    aget-object v2, p0, v1

    iget-object v2, v2, Lb/i/g/c;->b:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Lb/i/g/c;->b:[F

    array-length v3, v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public static g0(Landroid/graphics/drawable/Drawable;I)Z
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p0

    return p0

    :cond_0
    sget-boolean v0, La/a/a/a/a;->j:Z

    const-string v1, "DrawableCompat"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v4, "setLayoutDirection"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, La/a/a/a/a;->i:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v3, La/a/a/a/a;->j:Z

    :cond_1
    sget-object v0, La/a/a/a/a;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_1
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_1
    move-exception p0

    const-string p1, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    sput-object p0, La/a/a/a/a;->i:Ljava/lang/reflect/Method;

    :cond_2
    return v2
.end method

.method public static h(I)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static h0(Landroid/widget/TextView;I)V
    .locals 2

    invoke-static {p1}, La/a/a/a/a;->h(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i0(Landroid/widget/PopupWindow;Z)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    sget-boolean v0, La/a/a/a/a;->t:Z

    const-string v1, "PopupWindowCompatApi21"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "mOverlapAnchor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, La/a/a/a/a;->s:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Could not fetch mOverlapAnchor field from PopupWindow"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v0, La/a/a/a/a;->t:Z

    :cond_1
    sget-object v0, La/a/a/a/a;->s:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Could not set overlap anchor field in PopupWindow"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return v0

    .line 1
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_1

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez p1, :cond_2

    return v2

    :cond_2
    if-nez p4, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    array-length p4, p3

    if-gtz p4, :cond_3

    goto :goto_1

    :cond_3
    aget-object p4, p3, v2

    goto :goto_2

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    if-lt p2, v1, :cond_6

    .line 3
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, p4}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_3

    :cond_6
    const/4 p0, 0x1

    :goto_3
    if-eqz p0, :cond_7

    const/4 p0, -0x2

    return p0

    :cond_7
    return v2
.end method

.method public static j0(Landroid/widget/TextView;Lb/i/k/b;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, La/a/a/a/a;->O(Landroid/widget/TextView;)Lb/i/k/b$a;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lb/i/k/b$a;->a(Lb/i/k/b$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given text can not be applied to TextView."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static k0(Landroid/widget/TextView;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public static l(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static l0(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lb/i/g/l/a;

    if-eqz v0, :cond_1

    check-cast p0, Lb/i/g/l/a;

    invoke-interface {p0, p1}, Lb/i/g/l/a;->setTint(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static m(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_2

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    invoke-static {p0}, La/a/a/a/a;->m(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    instance-of v0, p0, Lb/i/g/l/b;

    if-eqz v0, :cond_3

    check-cast p0, Lb/i/g/l/b;

    invoke-interface {p0}, Lb/i/g/l/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_5

    check-cast p0, Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz p0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, La/a/a/a/a;->m(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public static m0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lb/i/g/l/a;

    if-eqz v0, :cond_1

    check-cast p0, Lb/i/g/l/a;

    invoke-interface {p0, p1}, Lb/i/g/l/a;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static n(Landroidx/recyclerview/widget/RecyclerView$x;Lb/r/d/r;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$m;Z)I
    .locals 1

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Lb/r/d/r;->b(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p2}, Lb/r/d/r;->e(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Lb/r/d/r;->l()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static n0(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lb/i/g/l/a;

    if-eqz v0, :cond_1

    check-cast p0, Lb/i/g/l/a;

    invoke-interface {p0, p1}, Lb/i/g/l/a;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static o(Landroidx/recyclerview/widget/RecyclerView$x;Lb/r/d/r;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$m;ZZ)I
    .locals 4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p6, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result p0

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_2

    return p0

    :cond_2
    invoke-virtual {p1, p3}, Lb/r/d/r;->b(Landroid/view/View;)I

    move-result p5

    invoke-virtual {p1, p2}, Lb/r/d/r;->e(Landroid/view/View;)I

    move-result p6

    sub-int/2addr p5, p6

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result p6

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p6, p3

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p5

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float p0, p0, p4

    invoke-virtual {p1}, Lb/r/d/r;->k()I

    move-result p3

    invoke-virtual {p1, p2}, Lb/r/d/r;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static o0(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lb/b/q/m0;->l:Lb/b/q/m0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lb/b/q/m0;->c:Landroid/view/View;

    if-ne v0, p0, :cond_1

    invoke-static {v1}, Lb/b/q/m0;->c(Lb/b/q/m0;)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lb/b/q/m0;->m:Lb/b/q/m0;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lb/b/q/m0;->c:Landroid/view/View;

    if-ne v0, p0, :cond_2

    invoke-virtual {p1}, Lb/b/q/m0;->b()V

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lb/b/q/m0;

    invoke-direct {v0, p0, p1}, Lb/b/q/m0;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static p(Landroidx/recyclerview/widget/RecyclerView$x;Lb/r/d/r;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$m;Z)I
    .locals 1

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Lb/r/d/r;->b(Landroid/view/View;)I

    move-result p5

    invoke-virtual {p1, p2}, Lb/r/d/r;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p5, p1

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p5

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result p0

    int-to-float p0, p0

    mul-float p2, p2, p0

    float-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p0(Landroid/widget/PopupWindow;I)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    return-void

    :cond_0
    sget-boolean v0, La/a/a/a/a;->r:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "setWindowLayoutType"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, La/a/a/a/a;->q:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-boolean v2, La/a/a/a/a;->r:Z

    :cond_1
    sget-object v0, La/a/a/a/a;->q:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method public static q([FII)[F
    .locals 2

    if-gt p1, p2, :cond_1

    array-length v0, p0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array p2, p2, [F

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static q0(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    if-lez v0, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static r(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0, p1}, La/a/a/a/a;->s(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 1
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2
    :catch_1
    :cond_1
    throw p0
.end method

.method public static r0([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static s(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 5

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x400

    :try_start_1
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2
    :catch_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    const-string p1, "TypefaceCompatUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error copying resource contents to temp file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 3
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 4
    :catch_3
    :cond_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_2
    if-eqz v2, :cond_2

    .line 5
    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 6
    :catch_4
    :cond_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static s0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p0, Lb/i/g/l/b;

    if-eqz v0, :cond_0

    check-cast p0, Lb/i/g/l/b;

    invoke-interface {p0}, Lb/i/g/l/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static t(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    invoke-static {p0, p1, v0, p2}, La/a/a/a/a;->u(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static t0(Lb/g/a/i/d$a;Lb/g/a/i/d$a;Lb/g/a/i/d$a;Lb/g/a/i/d$a;)Z
    .locals 5

    sget-object v0, Lb/g/a/i/d$a;->f:Lb/g/a/i/d$a;

    sget-object v1, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    sget-object v2, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_3

    if-ne p3, v0, :cond_2

    if-eq p1, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v3

    :cond_5
    :goto_4
    return v4
.end method

.method public static u(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selector"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v4, 0x14

    new-array v5, v4, [[I

    new-array v4, v4, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v3, :cond_d

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ge v9, v2, :cond_0

    const/4 v10, 0x3

    if-eq v8, v10, :cond_d

    :cond_0
    const/4 v10, 0x2

    if-ne v8, v10, :cond_c

    if-gt v9, v2, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_7

    :cond_1
    sget-object v8, Lb/i/d;->ColorStateListItem:[I

    if-nez v1, :cond_2

    move-object/from16 v9, p0

    .line 2
    invoke-virtual {v9, v0, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    invoke-virtual {v1, v0, v8, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3
    :goto_1
    sget v10, Lb/i/d;->ColorStateListItem_android_color:I

    const v11, -0xff01

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    sget v12, Lb/i/d;->ColorStateListItem_android_alpha:I

    invoke-virtual {v8, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    sget v12, Lb/i/d;->ColorStateListItem_alpha:I

    invoke-virtual {v8, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_4

    :goto_2
    invoke-virtual {v8, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    :cond_4
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    new-array v12, v8, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v13, v8, :cond_7

    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v15

    const v3, 0x10101a5

    if-eq v15, v3, :cond_6

    const v3, 0x101031f

    if-eq v15, v3, :cond_6

    sget v3, Lb/i/a;->alpha:I

    if-eq v15, v3, :cond_6

    add-int/lit8 v3, v14, 0x1

    invoke-interface {v0, v13, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_4

    :cond_5
    neg-int v15, v15

    :goto_4
    aput v15, v12, v14

    move v14, v3

    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    invoke-static {v12, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v3

    .line 4
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const v11, 0xffffff

    and-int/2addr v10, v11

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v8, v10

    add-int/lit8 v10, v7, 0x1

    .line 5
    array-length v11, v4

    const/4 v12, 0x4

    const/16 v13, 0x8

    if-le v10, v11, :cond_9

    if-gt v7, v12, :cond_8

    const/16 v11, 0x8

    goto :goto_5

    :cond_8
    mul-int/lit8 v11, v7, 0x2

    :goto_5
    new-array v11, v11, [I

    invoke-static {v4, v6, v11, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v11

    :cond_9
    aput v8, v4, v7

    .line 6
    array-length v8, v5

    if-le v10, v8, :cond_b

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    if-gt v7, v12, :cond_a

    goto :goto_6

    :cond_a
    mul-int/lit8 v13, v7, 0x2

    :goto_6
    invoke-static {v8, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v8

    :cond_b
    aput-object v3, v5, v7

    .line 7
    check-cast v5, [[I

    move v7, v10

    goto :goto_8

    :cond_c
    :goto_7
    move-object/from16 v9, p0

    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_d
    new-array v0, v7, [I

    new-array v1, v7, [[I

    invoke-static {v4, v6, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 8
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public static u0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    instance-of v0, p0, Lb/i/g/l/a;

    if-nez v0, :cond_1

    new-instance v0, Lb/i/g/l/d;

    invoke-direct {v0, p0}, Lb/i/g/l/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_1
    return-object p0

    :cond_2
    instance-of v0, p0, Lb/i/g/l/a;

    if-nez v0, :cond_3

    new-instance v0, Lb/i/g/l/c;

    invoke-direct {v0, p0}, Lb/i/g/l/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_3
    return-object p0
.end method

.method public static v(Ljava/lang/String;)[Lb/i/g/c;
    .locals 16

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_10

    .line 1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x45

    const/16 v7, 0x65

    if-ge v3, v5, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v8, v5, -0x41

    add-int/lit8 v9, v5, -0x5a

    mul-int v9, v9, v8

    if-lez v9, :cond_1

    add-int/lit8 v8, v5, -0x61

    add-int/lit8 v9, v5, -0x7a

    mul-int v9, v9, v8

    if-gtz v9, :cond_2

    :cond_1
    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2
    :cond_3
    :goto_2
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f

    .line 3
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x7a

    if-eq v5, v8, :cond_e

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5a

    if-ne v5, v8, :cond_4

    goto/16 :goto_a

    :cond_4
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [F

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_3
    if-ge v9, v8, :cond_d

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v9

    .line 4
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_a

    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v7, 0x20

    if-eq v15, v7, :cond_7

    const/16 v7, 0x65

    if-eq v15, v6, :cond_6

    if-eq v15, v7, :cond_6

    packed-switch v15, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-nez v12, :cond_5

    const/4 v12, 0x1

    goto :goto_6

    :pswitch_1
    if-eq v14, v9, :cond_8

    if-nez v13, :cond_8

    :cond_5
    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x1

    goto :goto_7

    :cond_7
    const/16 v7, 0x65

    :goto_5
    :pswitch_2
    const/4 v2, 0x1

    :cond_8
    :goto_6
    const/4 v13, 0x0

    :goto_7
    if-eqz v2, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_a
    :goto_8
    if-ge v9, v14, :cond_b

    add-int/lit8 v2, v10, 0x1

    .line 5
    invoke-virtual {v4, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v5, v10

    move v10, v2

    :cond_b
    if-eqz v11, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v14, v14, 0x1

    :goto_9
    move v9, v14

    const/4 v2, 0x0

    goto :goto_3

    :cond_d
    invoke-static {v5, v2, v10}, La/a/a/a/a;->q([FII)[F

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move-object v5, v2

    const/4 v2, 0x0

    goto :goto_b

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error in parsing \""

    const-string v3, "\""

    invoke-static {v2, v4, v3}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    :goto_a
    new-array v5, v2, [F

    .line 6
    :goto_b
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 7
    new-instance v4, Lb/i/g/c;

    invoke-direct {v4, v2, v5}, Lb/i/g/c;-><init>(C[F)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x0

    move v4, v3

    move v3, v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_10
    sub-int/2addr v3, v4

    const/4 v2, 0x1

    if-ne v3, v2, :cond_11

    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_11

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    new-array v2, v2, [F

    .line 9
    new-instance v3, Lb/i/g/c;

    invoke-direct {v3, v0, v2}, Lb/i/g/c;-><init>(C[F)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lb/i/g/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/i/g/c;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static v0(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_1

    instance-of v0, p1, Lb/i/n/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lb/i/n/d;

    invoke-direct {v0, p1, p0}, Lb/i/n/d;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static w(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0}, La/a/a/a/a;->v(Ljava/lang/String;)[Lb/i/g/c;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1, v0}, Lb/i/g/c;->b([Lb/i/g/c;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error in parsing "

    invoke-static {v2, p0}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x([Lb/i/g/c;)[Lb/i/g/c;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lb/i/g/c;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Lb/i/g/c;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lb/i/g/c;-><init>(Lb/i/g/c;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/g/a/i/d;",
            "I",
            "Ljava/util/ArrayList<",
            "Lb/g/a/i/m/n;",
            ">;",
            "Lb/g/a/i/m/n;",
            ")",
            "Lb/g/a/i/m/n;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget v0, p0, Lb/g/a/i/d;->K0:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/g/a/i/d;->L0:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    iget v3, p3, Lb/g/a/i/m/n;->b:I

    if-eq v0, v3, :cond_4

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/a/i/m/n;

    .line 1
    iget v5, v4, Lb/g/a/i/m/n;->b:I

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p3, p1, v4}, Lb/g/a/i/m/n;->d(ILb/g/a/i/m/n;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    if-nez p3, :cond_c

    instance-of v3, p0, Lb/g/a/i/i;

    if-eqz v3, :cond_a

    move-object v3, p0

    check-cast v3, Lb/g/a/i/i;

    const/4 v4, 0x0

    .line 3
    :goto_3
    iget v5, v3, Lb/g/a/i/i;->N0:I

    if-ge v4, v5, :cond_8

    iget-object v5, v3, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v5, v5, v4

    if-nez p1, :cond_6

    iget v6, v5, Lb/g/a/i/d;->K0:I

    if-eq v6, v2, :cond_6

    goto :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    iget v6, v5, Lb/g/a/i/d;->L0:I

    if-eq v6, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, -0x1

    :goto_4
    if-eq v6, v2, :cond_a

    const/4 v2, 0x0

    .line 4
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/m/n;

    .line 5
    iget v4, v3, Lb/g/a/i/m/n;->b:I

    if-ne v4, v6, :cond_9

    move-object p3, v3

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez p3, :cond_b

    .line 6
    new-instance p3, Lb/g/a/i/m/n;

    invoke-direct {p3, p1}, Lb/g/a/i/m/n;-><init>(I)V

    :cond_b
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {p3, p0}, Lb/g/a/i/m/n;->a(Lb/g/a/i/d;)Z

    move-result v2

    if-eqz v2, :cond_10

    instance-of v2, p0, Lb/g/a/i/g;

    if-eqz v2, :cond_e

    move-object v2, p0

    check-cast v2, Lb/g/a/i/g;

    .line 7
    iget-object v3, v2, Lb/g/a/i/g;->P0:Lb/g/a/i/c;

    .line 8
    iget v2, v2, Lb/g/a/i/g;->Q0:I

    if-nez v2, :cond_d

    const/4 v1, 0x1

    .line 9
    :cond_d
    invoke-virtual {v3, v1, p2, p3}, Lb/g/a/i/c;->c(ILjava/util/ArrayList;Lb/g/a/i/m/n;)V

    :cond_e
    if-nez p1, :cond_f

    .line 10
    iget v0, p3, Lb/g/a/i/m/n;->b:I

    .line 11
    iput v0, p0, Lb/g/a/i/d;->K0:I

    iget-object v0, p0, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {v0, p1, p2, p3}, Lb/g/a/i/c;->c(ILjava/util/ArrayList;Lb/g/a/i/m/n;)V

    iget-object v0, p0, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    goto :goto_7

    .line 12
    :cond_f
    iget v0, p3, Lb/g/a/i/m/n;->b:I

    .line 13
    iput v0, p0, Lb/g/a/i/d;->L0:I

    iget-object v0, p0, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {v0, p1, p2, p3}, Lb/g/a/i/c;->c(ILjava/util/ArrayList;Lb/g/a/i/m/n;)V

    iget-object v0, p0, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    invoke-virtual {v0, p1, p2, p3}, Lb/g/a/i/c;->c(ILjava/util/ArrayList;Lb/g/a/i/m/n;)V

    iget-object v0, p0, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    :goto_7
    invoke-virtual {v0, p1, p2, p3}, Lb/g/a/i/c;->c(ILjava/util/ArrayList;Lb/g/a/i/m/n;)V

    iget-object p0, p0, Lb/g/a/i/d;->R:Lb/g/a/i/c;

    invoke-virtual {p0, p1, p2, p3}, Lb/g/a/i/c;->c(ILjava/util/ArrayList;Lb/g/a/i/m/n;)V

    :cond_10
    return-object p3
.end method

.method public static z(Ljava/util/ArrayList;I)Lb/g/a/i/m/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/g/a/i/m/n;",
            ">;I)",
            "Lb/g/a/i/m/n;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/i/m/n;

    iget v3, v2, Lb/g/a/i/m/n;->b:I

    if-ne p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
