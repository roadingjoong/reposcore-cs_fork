.PHONY: docs docs-check

PYTHON      := python3
DOCS_SCRIPT := docs/update_docs_readme.py

## 기본 진입점: 변경이 있을 때만 README 갱신
docs:
	$(PYTHON) $(DOCS_SCRIPT)

## 변경 여부만 확인 (갱신하지 않음)
## 변경 있음 → exit 1 / 변경 없음 → exit 0
docs-check:
	$(PYTHON) $(DOCS_SCRIPT) --check
