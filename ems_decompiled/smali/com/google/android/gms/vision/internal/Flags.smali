.class public Lcom/google/android/gms/vision/internal/Flags;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final zza:Lc/d/a/b/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/h/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1
    new-instance v1, Lc/d/a/b/h/a$a;

    const/4 v2, 0x0

    const-string v3, "vision:product_barcode_value_logging_enabled"

    invoke-direct {v1, v2, v3, v0}, Lc/d/a/b/h/a$a;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    sput-object v1, Lcom/google/android/gms/vision/internal/Flags;->zza:Lc/d/a/b/h/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
